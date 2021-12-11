// Auto-generated. Do not edit!

// (in-package custom_msg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class getDistanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.locX = null;
      this.locY = null;
    }
    else {
      if (initObj.hasOwnProperty('locX')) {
        this.locX = initObj.locX
      }
      else {
        this.locX = 0.0;
      }
      if (initObj.hasOwnProperty('locY')) {
        this.locY = initObj.locY
      }
      else {
        this.locY = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type getDistanceRequest
    // Serialize message field [locX]
    bufferOffset = _serializer.float64(obj.locX, buffer, bufferOffset);
    // Serialize message field [locY]
    bufferOffset = _serializer.float64(obj.locY, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type getDistanceRequest
    let len;
    let data = new getDistanceRequest(null);
    // Deserialize message field [locX]
    data.locX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [locY]
    data.locY = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msg/getDistanceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd008fedca8f5e5953c4d8c76bbe1aed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 locX
    float64 locY
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new getDistanceRequest(null);
    if (msg.locX !== undefined) {
      resolved.locX = msg.locX;
    }
    else {
      resolved.locX = 0.0
    }

    if (msg.locY !== undefined) {
      resolved.locY = msg.locY;
    }
    else {
      resolved.locY = 0.0
    }

    return resolved;
    }
};

class getDistanceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type getDistanceResponse
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type getDistanceResponse
    let len;
    let data = new getDistanceResponse(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'custom_msg/getDistanceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'acff7fda0c683c872875f5c4b069f124';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 distance
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new getDistanceResponse(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: getDistanceRequest,
  Response: getDistanceResponse,
  md5sum() { return '59d4abc9a91cdb664f2e1f1ab2e98752'; },
  datatype() { return 'custom_msg/getDistance'; }
};
