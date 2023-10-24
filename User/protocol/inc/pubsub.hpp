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

#ifndef PUBSUB_HPP
#define PUBSUB_HPP

#include "stm32f4xx_hal.h"
#include "utils.h"
#include <iostream>
#include <vector>
#include <queue>
#include <string>

namespace pubsub {
// A subscriber is an object that is interested in receiving
// messages published to a particular topic.  The subscriber
// must implement the receive() method.
class Subscriber {
private:
  // The queue of messages that this subscriber is waiting to receive.
  std::queue<void> message_queue_;
  // A pointer to the next subscriber in the list of subscribers.
  Subscriber* next_subscriber_;

public:
  // Constructor for the subscriber.
  Subscriber(uint8_t data_length_) {
    // Register this subscriber with the publisher.
    SubscriberRegister();
  }

  // Register this subscriber with the publisher.
  void SubscriberRegister() {
    // Register the subscriber.
  }

  // Pull a message from the publisher.
  void PullMessage(void *data_ptr) {
    // Pull a message from the publisher.
  }
};

// A publisher is an object that is interested in publishing
// messages to a particular topic.  The publisher maintains
// a list of subscribers that are interested in messages to
// the topic, and when a message is published, the publisher
// sends the message to all of its subscribers.
class Publisher {
private:
  // The name of the topic that this publisher publishes to.
  std::string topic_name_;
  // The length of the data that this publisher publishes.
  uint8_t data_length_;
  // A pointer to the first subscriber in the list of subscribers.
  Subscriber* first_subscriber_;  
  // A pointer to the next publisher in the list of publishers.
  Publisher* next_publisher_;
  
public:
  // Constructor for the publisher.
  Publisher(uint8_t data_length) {
    // Register the publisher.
    PublisherRegister();
  }

  // Register the publisher.
  void PublisherRegister() {
    // Register the publisher.
  }

  // Publish a message to all the subscribers.
  void PushMessage(void *data_ptr) {
    // Publish a message to all the subscribers.
  }

  // Set the publisher's name
  void setName(const std::string& name) { topic_name_ = name; }

  // Return the publisher's name
  const std::string& getName() const { return topic_name_; }
};
}

#endif