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

bytes32 constant _tableId = bytes32(abi.encodePacked(bytes16(""), bytes16("Position")));
bytes32 constant PositionTableId = _tableId;

struct PositionData {
  uint256 pos_x;
  uint256 pos_y;
  uint256 chunk_x;
  uint256 chunk_y;
  uint256 last_update;
}

library Position {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](5);
    _schema[0] = SchemaType.UINT256;
    _schema[1] = SchemaType.UINT256;
    _schema[2] = SchemaType.UINT256;
    _schema[3] = SchemaType.UINT256;
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
    _fieldNames[0] = "pos_x";
    _fieldNames[1] = "pos_y";
    _fieldNames[2] = "chunk_x";
    _fieldNames[3] = "chunk_y";
    _fieldNames[4] = "last_update";
    return ("Position", _fieldNames);
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

  /** Get pos_x */
  function getPos_x(bytes32 key) internal view returns (uint256 pos_x) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 0);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Get pos_x (using the specified store) */
  function getPos_x(IStore _store, bytes32 key) internal view returns (uint256 pos_x) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 0);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Set pos_x */
  function setPos_x(bytes32 key, uint256 pos_x) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.setField(_tableId, _keyTuple, 0, abi.encodePacked((pos_x)));
  }

  /** Set pos_x (using the specified store) */
  function setPos_x(IStore _store, bytes32 key, uint256 pos_x) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.setField(_tableId, _keyTuple, 0, abi.encodePacked((pos_x)));
  }

  /** Get pos_y */
  function getPos_y(bytes32 key) internal view returns (uint256 pos_y) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 1);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Get pos_y (using the specified store) */
  function getPos_y(IStore _store, bytes32 key) internal view returns (uint256 pos_y) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 1);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Set pos_y */
  function setPos_y(bytes32 key, uint256 pos_y) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.setField(_tableId, _keyTuple, 1, abi.encodePacked((pos_y)));
  }

  /** Set pos_y (using the specified store) */
  function setPos_y(IStore _store, bytes32 key, uint256 pos_y) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.setField(_tableId, _keyTuple, 1, abi.encodePacked((pos_y)));
  }

  /** Get chunk_x */
  function getChunk_x(bytes32 key) internal view returns (uint256 chunk_x) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 2);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Get chunk_x (using the specified store) */
  function getChunk_x(IStore _store, bytes32 key) internal view returns (uint256 chunk_x) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 2);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Set chunk_x */
  function setChunk_x(bytes32 key, uint256 chunk_x) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.setField(_tableId, _keyTuple, 2, abi.encodePacked((chunk_x)));
  }

  /** Set chunk_x (using the specified store) */
  function setChunk_x(IStore _store, bytes32 key, uint256 chunk_x) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.setField(_tableId, _keyTuple, 2, abi.encodePacked((chunk_x)));
  }

  /** Get chunk_y */
  function getChunk_y(bytes32 key) internal view returns (uint256 chunk_y) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 3);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Get chunk_y (using the specified store) */
  function getChunk_y(IStore _store, bytes32 key) internal view returns (uint256 chunk_y) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 3);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Set chunk_y */
  function setChunk_y(bytes32 key, uint256 chunk_y) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.setField(_tableId, _keyTuple, 3, abi.encodePacked((chunk_y)));
  }

  /** Set chunk_y (using the specified store) */
  function setChunk_y(IStore _store, bytes32 key, uint256 chunk_y) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.setField(_tableId, _keyTuple, 3, abi.encodePacked((chunk_y)));
  }

  /** Get last_update */
  function getLast_update(bytes32 key) internal view returns (uint256 last_update) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 4);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Get last_update (using the specified store) */
  function getLast_update(IStore _store, bytes32 key) internal view returns (uint256 last_update) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 4);
    return (uint256(Bytes.slice32(_blob, 0)));
  }

  /** Set last_update */
  function setLast_update(bytes32 key, uint256 last_update) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.setField(_tableId, _keyTuple, 4, abi.encodePacked((last_update)));
  }

  /** Set last_update (using the specified store) */
  function setLast_update(IStore _store, bytes32 key, uint256 last_update) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.setField(_tableId, _keyTuple, 4, abi.encodePacked((last_update)));
  }

  /** Get the full data */
  function get(bytes32 key) internal view returns (PositionData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = StoreSwitch.getRecord(_tableId, _keyTuple, getSchema());
    return decode(_blob);
  }

  /** Get the full data (using the specified store) */
  function get(IStore _store, bytes32 key) internal view returns (PositionData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    bytes memory _blob = _store.getRecord(_tableId, _keyTuple, getSchema());
    return decode(_blob);
  }

  /** Set the full data using individual values */
  function set(
    bytes32 key,
    uint256 pos_x,
    uint256 pos_y,
    uint256 chunk_x,
    uint256 chunk_y,
    uint256 last_update
  ) internal {
    bytes memory _data = encode(pos_x, pos_y, chunk_x, chunk_y, last_update);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    StoreSwitch.setRecord(_tableId, _keyTuple, _data);
  }

  /** Set the full data using individual values (using the specified store) */
  function set(
    IStore _store,
    bytes32 key,
    uint256 pos_x,
    uint256 pos_y,
    uint256 chunk_x,
    uint256 chunk_y,
    uint256 last_update
  ) internal {
    bytes memory _data = encode(pos_x, pos_y, chunk_x, chunk_y, last_update);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = bytes32((key));

    _store.setRecord(_tableId, _keyTuple, _data);
  }

  /** Set the full data using the data struct */
  function set(bytes32 key, PositionData memory _table) internal {
    set(key, _table.pos_x, _table.pos_y, _table.chunk_x, _table.chunk_y, _table.last_update);
  }

  /** Set the full data using the data struct (using the specified store) */
  function set(IStore _store, bytes32 key, PositionData memory _table) internal {
    set(_store, key, _table.pos_x, _table.pos_y, _table.chunk_x, _table.chunk_y, _table.last_update);
  }

  /** Decode the tightly packed blob using this table's schema */
  function decode(bytes memory _blob) internal pure returns (PositionData memory _table) {
    _table.pos_x = (uint256(Bytes.slice32(_blob, 0)));

    _table.pos_y = (uint256(Bytes.slice32(_blob, 32)));

    _table.chunk_x = (uint256(Bytes.slice32(_blob, 64)));

    _table.chunk_y = (uint256(Bytes.slice32(_blob, 96)));

    _table.last_update = (uint256(Bytes.slice32(_blob, 128)));
  }

  /** Tightly pack full data using this table's schema */
  function encode(
    uint256 pos_x,
    uint256 pos_y,
    uint256 chunk_x,
    uint256 chunk_y,
    uint256 last_update
  ) internal view returns (bytes memory) {
    return abi.encodePacked(pos_x, pos_y, chunk_x, chunk_y, last_update);
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
