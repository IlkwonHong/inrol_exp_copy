// Auto-generated. Do not edit!

// (in-package rft_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class rft {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.f_x = null;
      this.f_y = null;
      this.f_z = null;
    }
    else {
      if (initObj.hasOwnProperty('f_x')) {
        this.f_x = initObj.f_x
      }
      else {
        this.f_x = 0.0;
      }
      if (initObj.hasOwnProperty('f_y')) {
        this.f_y = initObj.f_y
      }
      else {
        this.f_y = 0.0;
      }
      if (initObj.hasOwnProperty('f_z')) {
        this.f_z = initObj.f_z
      }
      else {
        this.f_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rft
    // Serialize message field [f_x]
    bufferOffset = _serializer.float64(obj.f_x, buffer, bufferOffset);
    // Serialize message field [f_y]
    bufferOffset = _serializer.float64(obj.f_y, buffer, bufferOffset);
    // Serialize message field [f_z]
    bufferOffset = _serializer.float64(obj.f_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rft
    let len;
    let data = new rft(null);
    // Deserialize message field [f_x]
    data.f_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_y]
    data.f_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_z]
    data.f_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rft_msg/rft';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bfff34252712dea0382c929d95a84d0b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 f_x
    float64 f_y
    float64 f_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rft(null);
    if (msg.f_x !== undefined) {
      resolved.f_x = msg.f_x;
    }
    else {
      resolved.f_x = 0.0
    }

    if (msg.f_y !== undefined) {
      resolved.f_y = msg.f_y;
    }
    else {
      resolved.f_y = 0.0
    }

    if (msg.f_z !== undefined) {
      resolved.f_z = msg.f_z;
    }
    else {
      resolved.f_z = 0.0
    }

    return resolved;
    }
};

module.exports = rft;
