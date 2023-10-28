/**
 ******************************************************************************
 * @file    .cpp/h
 * @brief   
 * @author  CCB
 * @note    finish 
 ******************************************************************************
 * Copyright (c) 2024 Team RobotPilots-SZU
 * All rights reserved.
 ******************************************************************************
 */
/* Includes -----------------------------------------------------------------*/
#include "pubsub.hpp"

using namespace pubsub;

// As an iterator for a publisher's linked list
Publisher publisher_header("header", NULL, NULL, NULL);
const size_t Subscriber::kSubQueueSizeMax = 1;
/**
 * @brief Register this subscriber with the publisher.
 * 
 * @param topic_name 
 * @param data_length 
 */
void Subscriber::CreateSubscriber(const std::string& topic_name, uint8_t data_length) {
  Publisher* pub = Publisher::CheckPublisher(topic_name, data_length);
  topic_name_ = topic_name;
  data_length_ = data_length;
  next_subscriber_ = NULL;

  // Allocate memory for data
  message_ptr_ = malloc(data_length_);

  // If no subscribers, set this as first subscriber
  if (pub->GetFirstSubscriberPtr() == NULL) {
    pub->SetFirstSubscriberPtr(this);
  } else {
    // Find the last subscriber and add this to the end
    Subscriber* sub = pub->GetFirstSubscriberPtr();
    while (sub->GetNextSubscriberPtr()) { 
      sub = sub->GetNextSubscriberPtr(); 
    }
    sub->SetNextSubscriberPtr(this);
  }
}
/**
 * @brief Pull a message from the publisher.
 * 
 * @param data_ptr The address where subscribed messages will be saved by the subscriber
 */
void Subscriber::PullMessage(void *data_ptr) {
  // If data ptr is empty, then we will just spin.
  if (data_ptr == NULL) {
    while (true)
      continue;
  }

  // Copy the message into the data pointer.
  memcpy(data_ptr, GetMessagePtr(), GetDataLength());
}
/**
 * @brief Register the publisher.
 * 
 * @param topic_name The name of the topic
 * @param data_length The length of the data to be published
 */
void Publisher::CreatePublisher(const std::string& topic_name, uint8_t data_length) {
  Publisher* pub = &publisher_header;
  /* Iterate from the second publisher until the next publisher is a null pointer */
  while (pub->GetNextPublisherPtr()) {
    pub = pub->GetNextPublisherPtr();
    if (pub->GetTopicName() == topic_name) {
      /* No two publishers with the same topic name are allowed */
      while (true) 
        continue;
    }
  }
  topic_name_ = topic_name;
  data_length_ = data_length;
  first_subscriber_ = NULL;
  next_publisher_ = NULL;
  pub->SetNextPublisherPtr(this);
}
/**
 * @brief Check if there is already publisher under the current topic_name
 * 
 * @param topic_name  the topic name that intend to create subscriber
 * @param data_length 
 * @return Publisher* pub  : There are publishers with the same topic name
 * @return Publisher* pub_ : Create a publisher with the same topic name
 */
Publisher* Publisher::CheckPublisher(const std::string& topic_name, uint8_t data_length) {
  Publisher* pub = &publisher_header;
  /* Iterate from the second publisher until the next publisher is a null pointer */
  while (pub->GetNextPublisherPtr()) {
    pub = pub->GetNextPublisherPtr();
    if (pub->GetTopicName() == topic_name) {
      if (pub->GetDataLength() == data_length) { 
        return pub; 
      } else {
        /* The same topic name has different data lengths */
        while (true) {
          continue;
        }
      }
    }
  }
  Publisher* pub_ = new Publisher(topic_name, data_length);
  pub->SetNextPublisherPtr(pub_);
  return pub_;
}
/**
 * @brief Publish a message to all the subscribers.
 * 
 * @param data_ptr The address where the published message will be pushed by the publisher
 */
void Publisher::PushMessage(void *data_ptr) {
  static Subscriber *iterate;
  
  // If data ptr is empty, then we will just spin.
  if (data_ptr == NULL) {
    while (true)
      continue;
  }
  
  // Iterate over all subscribers and copy the data to their message buffer.
  iterate = GetFirstSubscriberPtr();
  while (iterate) {
    memcpy(iterate->GetMessagePtr(), data_ptr, GetDataLength());
    iterate = iterate->GetNextSubscriberPtr();
  }
}
