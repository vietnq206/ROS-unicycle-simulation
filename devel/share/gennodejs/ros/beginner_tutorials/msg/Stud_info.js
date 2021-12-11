// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Stud_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.stud_if = null;
      this.age = null;
      this.weight = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('stud_if')) {
        this.stud_if = initObj.stud_if
      }
      else {
        this.stud_if = 0;
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
      if (initObj.hasOwnProperty('weight')) {
        this.weight = initObj.weight
      }
      else {
        this.weight = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Stud_info
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [stud_if]
    bufferOffset = _serializer.int8(obj.stud_if, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.uint8(obj.age, buffer, bufferOffset);
    // Serialize message field [weight]
    bufferOffset = _serializer.float32(obj.weight, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Stud_info
    let len;
    let data = new Stud_info(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stud_if]
    data.stud_if = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [weight]
    data.weight = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/Stud_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bec0436c0268e15cb002e8251ec500b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    
    int8 stud_if
    uint8 age
    float32 weight
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Stud_info(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.stud_if !== undefined) {
      resolved.stud_if = msg.stud_if;
    }
    else {
      resolved.stud_if = 0
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    if (msg.weight !== undefined) {
      resolved.weight = msg.weight;
    }
    else {
      resolved.weight = 0.0
    }

    return resolved;
    }
};

module.exports = Stud_info;
