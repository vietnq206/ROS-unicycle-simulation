// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class custom {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_name = null;
      this.data_time = null;
      this.location = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_name')) {
        this.robot_name = initObj.robot_name
      }
      else {
        this.robot_name = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('data_time')) {
        this.data_time = initObj.data_time
      }
      else {
        this.data_time = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = new geometry_msgs.msg.Pose2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type custom
    // Serialize message field [robot_name]
    bufferOffset = std_msgs.msg.String.serialize(obj.robot_name, buffer, bufferOffset);
    // Serialize message field [data_time]
    bufferOffset = std_msgs.msg.String.serialize(obj.data_time, buffer, bufferOffset);
    // Serialize message field [location]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.location, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type custom
    let len;
    let data = new custom(null);
    // Deserialize message field [robot_name]
    data.robot_name = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [data_time]
    data.data_time = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [location]
    data.location = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.robot_name);
    length += std_msgs.msg.String.getMessageSize(object.data_time);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/custom';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d6c6b425f5ae28063ccf16e8002d35a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String robot_name
    std_msgs/String data_time
    
    geometry_msgs/Pose2D location
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new custom(null);
    if (msg.robot_name !== undefined) {
      resolved.robot_name = std_msgs.msg.String.Resolve(msg.robot_name)
    }
    else {
      resolved.robot_name = new std_msgs.msg.String()
    }

    if (msg.data_time !== undefined) {
      resolved.data_time = std_msgs.msg.String.Resolve(msg.data_time)
    }
    else {
      resolved.data_time = new std_msgs.msg.String()
    }

    if (msg.location !== undefined) {
      resolved.location = geometry_msgs.msg.Pose2D.Resolve(msg.location)
    }
    else {
      resolved.location = new geometry_msgs.msg.Pose2D()
    }

    return resolved;
    }
};

module.exports = custom;
