// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "@latticexyz/store/src/Schema.sol";
import { PackedCounter, PackedCounterLib } from "@latticexyz/store/src/PackedCounter.sol";

bytes32 constant _tableId = bytes32(abi.encodePacked(bytes16(""), bytes16("Ports")));
bytes32 constant PortsTableId = _tableId;

struct PortsData {
  uint256 port_id;
  string port_name;
  string port_type;
  string port_owner;
  uint256 port_pos_x;
}

library Ports {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](5);
    _schema[0] = SchemaType.UINT256;
    _schema[1] = SchemaType.STRING;
    _schema[2] = SchemaType.STRING;
    _schema[3] = SchemaType.STRING;
    _schema[4] = SchemaType.UINT256;

    return SchemaLib.encode(_schema);
  }

  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](1);
    _schema[0] = SchemaType.BYTES32;

    return SchemaLib.encode(_schema);
  }

  /** Get the table's metadata */
  function getMetadata() internal pure returns (string memory, string[] memory) {
    string[] memory _fieldNames = new string[](5);
    _fieldNames[0] = "port_id";
    _fieldNames[1] = "port_name";
    _fieldNames[2] = "port_type";
    _fieldNames[3] = "port_owner";
    _fieldNames[4] = "port_pos_x";
    return ("Ports", _fieldNames);
  }

  /** Register the table's schema */
  function registerSchema() internal {
    StoreSwitch.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Register the table's schema (using the specified store) */
  function registerSchema(IStore _store) internal {
    _store.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Set the table's metadata */
  function setMetadata() internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    StoreSwitch.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Set the table's metadata (using the specified store) */
  function setMetadata(IStore _store) internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    _store.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Get port_id */
  function getPort_id(bytes32 key) internal view returns (uint256 port_id) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 0);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Get port_id (using the specified store) */
  function getPort_id(IStore _store, bytes32 key) internal view returns (uint256 port_id) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 0);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Set port_id */
  function setPort_id(bytes32 key, uint256 port_id) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.setField(_tableId, _keyTuple, 0, abi.encodePacked((port_id)));
  }

  /** Set port_id (using the specified store) */
  function setPort_id(IStore _store, bytes32 key, uint256 port_id) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.setField(_tableId, _keyTuple, 0, abi.encodePacked((port_id)));
  }

  /** Get port_name */
  function getPort_name(bytes32 key) internal view returns (string memory port_name) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 1);
    return (string(_blob));
  }

  /** Get port_name (using the specified store) */
  function getPort_name(IStore _store, bytes32 key) internal view returns (string memory port_name) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 1);
    return (string(_blob));
  }

  /** Set port_name */
  function setPort_name(bytes32 key, string memory port_name) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.setField(_tableId, _keyTuple, 1, bytes((port_name)));
  }

  /** Set port_name (using the specified store) */
  function setPort_name(IStore _store, bytes32 key, string memory port_name) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.setField(_tableId, _keyTuple, 1, bytes((port_name)));
  }

  /** Get the length of port_name */
  function lengthPort_name(bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 1, getSchema());
    return _byteLength / 1;
  }

  /** Get the length of port_name (using the specified store) */
  function lengthPort_name(IStore _store, bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 1, getSchema());
    return _byteLength / 1;
  }

  /** Get an item of port_name (unchecked, returns invalid data if index overflows) */
  function getItemPort_name(bytes32 key, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getFieldSlice(_tableId, _keyTuple, 1, getSchema(), _index * 1, (_index + 1) * 1);
    return (string(_blob));
  }

  /** Get an item of port_name (using the specified store) (unchecked, returns invalid data if index overflows) */
  function getItemPort_name(IStore _store, bytes32 key, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 1, getSchema(), _index * 1, (_index + 1) * 1);
    return (string(_blob));
  }

  /** Push a slice to port_name */
  function pushPort_name(bytes32 key, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.pushToField(_tableId, _keyTuple, 1, bytes((_slice)));
  }

  /** Push a slice to port_name (using the specified store) */
  function pushPort_name(IStore _store, bytes32 key, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.pushToField(_tableId, _keyTuple, 1, bytes((_slice)));
  }

  /** Pop a slice from port_name */
  function popPort_name(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.popFromField(_tableId, _keyTuple, 1, 1);
  }

  /** Pop a slice from port_name (using the specified store) */
  function popPort_name(IStore _store, bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.popFromField(_tableId, _keyTuple, 1, 1);
  }

  /** Update a slice of port_name at `_index` */
  function updatePort_name(bytes32 key, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.updateInField(_tableId, _keyTuple, 1, _index * 1, bytes((_slice)));
  }

  /** Update a slice of port_name (using the specified store) at `_index` */
  function updatePort_name(IStore _store, bytes32 key, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.updateInField(_tableId, _keyTuple, 1, _index * 1, bytes((_slice)));
  }

  /** Get port_type */
  function getPort_type(bytes32 key) internal view returns (string memory port_type) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 2);
    return (string(_blob));
  }

  /** Get port_type (using the specified store) */
  function getPort_type(IStore _store, bytes32 key) internal view returns (string memory port_type) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 2);
    return (string(_blob));
  }

  /** Set port_type */
  function setPort_type(bytes32 key, string memory port_type) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.setField(_tableId, _keyTuple, 2, bytes((port_type)));
  }

  /** Set port_type (using the specified store) */
  function setPort_type(IStore _store, bytes32 key, string memory port_type) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.setField(_tableId, _keyTuple, 2, bytes((port_type)));
  }

  /** Get the length of port_type */
  function lengthPort_type(bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 2, getSchema());
    return _byteLength / 1;
  }

  /** Get the length of port_type (using the specified store) */
  function lengthPort_type(IStore _store, bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 2, getSchema());
    return _byteLength / 1;
  }

  /** Get an item of port_type (unchecked, returns invalid data if index overflows) */
  function getItemPort_type(bytes32 key, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getFieldSlice(_tableId, _keyTuple, 2, getSchema(), _index * 1, (_index + 1) * 1);
    return (string(_blob));
  }

  /** Get an item of port_type (using the specified store) (unchecked, returns invalid data if index overflows) */
  function getItemPort_type(IStore _store, bytes32 key, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 2, getSchema(), _index * 1, (_index + 1) * 1);
    return (string(_blob));
  }

  /** Push a slice to port_type */
  function pushPort_type(bytes32 key, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.pushToField(_tableId, _keyTuple, 2, bytes((_slice)));
  }

  /** Push a slice to port_type (using the specified store) */
  function pushPort_type(IStore _store, bytes32 key, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.pushToField(_tableId, _keyTuple, 2, bytes((_slice)));
  }

  /** Pop a slice from port_type */
  function popPort_type(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.popFromField(_tableId, _keyTuple, 2, 1);
  }

  /** Pop a slice from port_type (using the specified store) */
  function popPort_type(IStore _store, bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.popFromField(_tableId, _keyTuple, 2, 1);
  }

  /** Update a slice of port_type at `_index` */
  function updatePort_type(bytes32 key, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.updateInField(_tableId, _keyTuple, 2, _index * 1, bytes((_slice)));
  }

  /** Update a slice of port_type (using the specified store) at `_index` */
  function updatePort_type(IStore _store, bytes32 key, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.updateInField(_tableId, _keyTuple, 2, _index * 1, bytes((_slice)));
  }

  /** Get port_owner */
  function getPort_owner(bytes32 key) internal view returns (string memory port_owner) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 3);
    return (string(_blob));
  }

  /** Get port_owner (using the specified store) */
  function getPort_owner(IStore _store, bytes32 key) internal view returns (string memory port_owner) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 3);
    return (string(_blob));
  }

  /** Set port_owner */
  function setPort_owner(bytes32 key, string memory port_owner) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.setField(_tableId, _keyTuple, 3, bytes((port_owner)));
  }

  /** Set port_owner (using the specified store) */
  function setPort_owner(IStore _store, bytes32 key, string memory port_owner) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.setField(_tableId, _keyTuple, 3, bytes((port_owner)));
  }

  /** Get the length of port_owner */
  function lengthPort_owner(bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    uint256 _byteLength = StoreSwitch.getFieldLength(_tableId, _keyTuple, 3, getSchema());
    return _byteLength / 1;
  }

  /** Get the length of port_owner (using the specified store) */
  function lengthPort_owner(IStore _store, bytes32 key) internal view returns (uint256) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    uint256 _byteLength = _store.getFieldLength(_tableId, _keyTuple, 3, getSchema());
    return _byteLength / 1;
  }

  /** Get an item of port_owner (unchecked, returns invalid data if index overflows) */
  function getItemPort_owner(bytes32 key, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getFieldSlice(_tableId, _keyTuple, 3, getSchema(), _index * 1, (_index + 1) * 1);
    return (string(_blob));
  }

  /** Get an item of port_owner (using the specified store) (unchecked, returns invalid data if index overflows) */
  function getItemPort_owner(IStore _store, bytes32 key, uint256 _index) internal view returns (string memory) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = _store.getFieldSlice(_tableId, _keyTuple, 3, getSchema(), _index * 1, (_index + 1) * 1);
    return (string(_blob));
  }

  /** Push a slice to port_owner */
  function pushPort_owner(bytes32 key, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.pushToField(_tableId, _keyTuple, 3, bytes((_slice)));
  }

  /** Push a slice to port_owner (using the specified store) */
  function pushPort_owner(IStore _store, bytes32 key, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.pushToField(_tableId, _keyTuple, 3, bytes((_slice)));
  }

  /** Pop a slice from port_owner */
  function popPort_owner(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.popFromField(_tableId, _keyTuple, 3, 1);
  }

  /** Pop a slice from port_owner (using the specified store) */
  function popPort_owner(IStore _store, bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.popFromField(_tableId, _keyTuple, 3, 1);
  }

  /** Update a slice of port_owner at `_index` */
  function updatePort_owner(bytes32 key, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.updateInField(_tableId, _keyTuple, 3, _index * 1, bytes((_slice)));
  }

  /** Update a slice of port_owner (using the specified store) at `_index` */
  function updatePort_owner(IStore _store, bytes32 key, uint256 _index, string memory _slice) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.updateInField(_tableId, _keyTuple, 3, _index * 1, bytes((_slice)));
  }

  /** Get port_pos_x */
  function getPort_pos_x(bytes32 key) internal view returns (uint256 port_pos_x) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 4);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Get port_pos_x (using the specified store) */
  function getPort_pos_x(IStore _store, bytes32 key) internal view returns (uint256 port_pos_x) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 4);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Set port_pos_x */
  function setPort_pos_x(bytes32 key, uint256 port_pos_x) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.setField(_tableId, _keyTuple, 4, abi.encodePacked((port_pos_x)));
  }

  /** Set port_pos_x (using the specified store) */
  function setPort_pos_x(IStore _store, bytes32 key, uint256 port_pos_x) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.setField(_tableId, _keyTuple, 4, abi.encodePacked((port_pos_x)));
  }

  /** Get the full data */
  function get(bytes32 key) internal view returns (PortsData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getRecord(_tableId, _keyTuple, getSchema());
    return decode(_blob);
  }

  /** Get the full data (using the specified store) */
  function get(IStore _store, bytes32 key) internal view returns (PortsData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = _store.getRecord(_tableId, _keyTuple, getSchema());
    return decode(_blob);
  }

  /** Set the full data using individual values */
  function set(
    bytes32 key,
    uint256 port_id,
    string memory port_name,
    string memory port_type,
    string memory port_owner,
    uint256 port_pos_x
  ) internal {
    bytes memory _data = encode(port_id, port_name, port_type, port_owner, port_pos_x);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.setRecord(_tableId, _keyTuple, _data);
  }

  /** Set the full data using individual values (using the specified store) */
  function set(
    IStore _store,
    bytes32 key,
    uint256 port_id,
    string memory port_name,
    string memory port_type,
    string memory port_owner,
    uint256 port_pos_x
  ) internal {
    bytes memory _data = encode(port_id, port_name, port_type, port_owner, port_pos_x);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.setRecord(_tableId, _keyTuple, _data);
  }

  /** Set the full data using the data struct */
  function set(bytes32 key, PortsData memory _table) internal {
    set(key, _table.port_id, _table.port_name, _table.port_type, _table.port_owner, _table.port_pos_x);
  }

  /** Set the full data using the data struct (using the specified store) */
  function set(IStore _store, bytes32 key, PortsData memory _table) internal {
    set(_store, key, _table.port_id, _table.port_name, _table.port_type, _table.port_owner, _table.port_pos_x);
  }

  /** Decode the tightly packed blob using this table's schema */
  function decode(bytes memory _blob) internal view returns (PortsData memory _table) {
    // 64 is the total byte length of static data
    PackedCounter _encodedLengths = PackedCounter.wrap(Bytes.slice32(_blob, 64));

    _table.port_id = (uint256(Bytes.slice32(_blob, 0)));

    _table.port_pos_x = (uint256(Bytes.slice32(_blob, 32)));

    // Store trims the blob if dynamic fields are all empty
    if (_blob.length > 64) {
      uint256 _start;
      // skip static data length + dynamic lengths word
      uint256 _end = 96;

      _start = _end;
      _end += _encodedLengths.atIndex(0);
      _table.port_name = (string(SliceLib.getSubslice(_blob, _start, _end).toBytes()));

      _start = _end;
      _end += _encodedLengths.atIndex(1);
      _table.port_type = (string(SliceLib.getSubslice(_blob, _start, _end).toBytes()));

      _start = _end;
      _end += _encodedLengths.atIndex(2);
      _table.port_owner = (string(SliceLib.getSubslice(_blob, _start, _end).toBytes()));
    }
  }

  /** Tightly pack full data using this table's schema */
  function encode(
    uint256 port_id,
    string memory port_name,
    string memory port_type,
    string memory port_owner,
    uint256 port_pos_x
  ) internal view returns (bytes memory) {
    uint40[] memory _counters = new uint40[](3);
    _counters[0] = uint40(bytes(port_name).length);
    _counters[1] = uint40(bytes(port_type).length);
    _counters[2] = uint40(bytes(port_owner).length);
    PackedCounter _encodedLengths = PackedCounterLib.pack(_counters);

    return
      abi.encodePacked(
        port_id,
        port_pos_x,
        _encodedLengths.unwrap(),
        bytes((port_name)),
        bytes((port_type)),
        bytes((port_owner))
      );
  }

  /** Encode keys as a bytes32 array using this table's schema */
  function encodeKeyTuple(bytes32 key) internal pure returns (bytes32[] memory _keyTuple) {
    _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));
  }

  /* Delete all data for given keys */
  function deleteRecord(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.deleteRecord(_tableId, _keyTuple);
  }
}
