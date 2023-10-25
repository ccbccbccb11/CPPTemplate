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
/**
 * @todo 订阅者可以订阅多条消息
*/
#ifndef PUBSUB_HPP
#define PUBSUB_HPP

#include "stm32f4xx_hal.h"
#include "utils.h"
#include <iostream>
#include <vector>
#include <queue>
#include <string>

namespace pubsub {
// PubSub is a base class for Subscriber and Publisher
class PubSub {
protected:
  // The name of the topic that pub/sub publishes/subscribes to.
  std::string topic_name_;
  // The length of the data that this pub/sub publishes/subscribes.
  uint8_t data_length_;
public:
  // Set the subscriber's name
  void SetTopicName(const std::string& name) { topic_name_ = name; }

  // Set the publisher's data length
  void SetDataLength(uint8_t data_length) { data_length_ = data_length; }

  // Return the subscriber's name
  const std::string& GetTopicName() const { return topic_name_; }

  // Return the publisher's data_length
  const uint8_t GetDataLength() const { return data_length_; }
};
  
// A subscriber is an object that is interested in receiving
// messages published to a particular topic.  The subscriber
// must implement the receive() method.
class Subscriber : public PubSub {
private:
  // The ptr of messages that this subscriber is waiting to receive.
  // std::queue<void*> message_queue_;
  void* message_ptr_;
  // A pointer to the next subscriber in the list of subscribers.
  Subscriber* next_subscriber_;

public:
  // Maximum length of queue
  static const size_t kSubQueueSizeMax;
  // Constructor for the subscriber.
  Subscriber(const std::string& topic_name, uint8_t data_length) {
    // Register this subscriber with the publisher.
    CreateSubscriber(topic_name, data_length);
  }

  // Register this subscriber with the publisher.
  void CreateSubscriber(const std::string& topic_name, uint8_t data_length);

  // Pull a message from the publisher.
  void PullMessage(void *data_ptr);

  // Set the next subscriber's prt
  void SetNextSubscriberPtr(Subscriber* next_subscriber) { next_subscriber_ = next_subscriber; }

  // Set message ptr 
  void SetMessagePtr(void* message_ptr) { message_ptr_ = message_ptr; }

  // Return message ptr 
  void* GetMessagePtr(void) { return message_ptr_; }

  // // Fill the queue with data
  // void QueuePushBack(void *data_ptr) { message_queue_.push(data_ptr); }

  // // Pop the queue
  // void QueuePopFront(void) { message_queue_.pop(); }

  // // Return queue size
  // size_t GetQueueSize(void) { return message_queue_.size(); }

  // Return the next subscriber_'s adress
  Subscriber* GetNextSubscriberPtr() { return next_subscriber_; }
};

// A publisher is an object that is interested in publishing
// messages to a particular topic.  The publisher maintains
// a list of subscribers that are interested in messages to
// the topic, and when a message is published, the publisher
// sends the message to all of its subscribers.
class Publisher : public PubSub {
private:
  // A pointer to the first subscriber in the list of subscribers.
  Subscriber* first_subscriber_;  
  // A pointer to the next publisher in the list of publishers.
  Publisher* next_publisher_;
  
public:
  // Constructor for the publisher.
  Publisher(const std::string& topic_name, uint8_t data_length) { CreatePublisher(topic_name, data_length); }

  // Constructor for the publisher.
  Publisher(const std::string& topic_name, uint8_t data_length, Subscriber* first_subscriber, Publisher* next_publisher) :
    first_subscriber_(first_subscriber), next_publisher_(next_publisher) {
    SetTopicName(topic_name);
    SetDataLength(data_length);
  }

  // Register the publisher.
  void CreatePublisher(const std::string& topic_name, uint8_t data_length);

  // Check if there is already publisher under the current topic_name
  static Publisher* CheckPublisher(const std::string& topic_name, uint8_t data_length);

  // Publish a message to all the subscribers.
  void PushMessage(void *data_ptr);

  // Set the publisher's name
  void SetFirstSubscriberPtr(Subscriber* first_subscriber) { first_subscriber_ = first_subscriber; }

  // Set the publisher's data length
  void SetNextPublisherPtr(Publisher* next_publisher) { next_publisher_ = next_publisher; }

  // Return the first subscriber's adress
  Subscriber* GetFirstSubscriberPtr() { return first_subscriber_; }

  // Return the next publisher's adress
  Publisher* GetNextPublisherPtr() { return next_publisher_; }
};
}

#endif