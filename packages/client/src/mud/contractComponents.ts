/* Autogenerated file. Do not edit manually. */

import { TableId } from "@latticexyz/utils";
import { defineComponent, Type as RecsType, World } from "@latticexyz/recs";

export function defineContractComponents(world: World) {
  return {
    SwapExecuted: (() => {
      const tableId = new TableId("", "SwapExecuted");
      return defineComponent(
        world,
        {
          receiver: RecsType.String,
          amountIn: RecsType.BigInt,
          amountOut: RecsType.BigInt,
          item0: RecsType.Number,
          item1: RecsType.Number,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    LiquidityAdded: (() => {
      const tableId = new TableId("", "LiquidityAdded");
      return defineComponent(
        world,
        {
          amount: RecsType.BigInt,
          receiver: RecsType.String,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    LiquidityRemoved: (() => {
      const tableId = new TableId("", "LiquidityRemoved");
      return defineComponent(
        world,
        {
          amount: RecsType.BigInt,
          receiver: RecsType.String,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    Health: (() => {
      const tableId = new TableId("", "Health");
      return defineComponent(
        world,
        {
          health: RecsType.BigInt,
          max_health: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    HealthRegen: (() => {
      const tableId = new TableId("", "HealthRegen");
      return defineComponent(
        world,
        {
          last_update: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    FirePower: (() => {
      const tableId = new TableId("", "FirePower");
      return defineComponent(
        world,
        {
          power: RecsType.BigInt,
          rate: RecsType.BigInt,
          last_update: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    CargoSpace: (() => {
      const tableId = new TableId("", "CargoSpace");
      return defineComponent(
        world,
        {
          cargo: RecsType.BigInt,
          max_cargo: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    Speed: (() => {
      const tableId = new TableId("", "Speed");
      return defineComponent(
        world,
        {
          max_speed: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    Position: (() => {
      const tableId = new TableId("", "Position");
      return defineComponent(
        world,
        {
          pos_x: RecsType.BigInt,
          pos_y: RecsType.BigInt,
          chunk_x: RecsType.BigInt,
          chunk_y: RecsType.BigInt,
          last_update: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    Salt: (() => {
      const tableId = new TableId("", "Salt");
      return defineComponent(
        world,
        {
          amount: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    Spices: (() => {
      const tableId = new TableId("", "Spices");
      return defineComponent(
        world,
        {
          amount: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    Iron: (() => {
      const tableId = new TableId("", "Iron");
      return defineComponent(
        world,
        {
          amount: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    Sugar: (() => {
      const tableId = new TableId("", "Sugar");
      return defineComponent(
        world,
        {
          amount: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    Coins: (() => {
      const tableId = new TableId("", "Coins");
      return defineComponent(
        world,
        {
          amount: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    LPTokens: (() => {
      const tableId = new TableId("", "LPTokens");
      return defineComponent(
        world,
        {
          amount: RecsType.BigInt,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    Ports: (() => {
      const tableId = new TableId("", "Ports");
      return defineComponent(
        world,
        {
          port_owner: RecsType.String,
          port_name: RecsType.String,
          last_updated: RecsType.BigInt,
          port_speeds: RecsType.BigIntArray,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
    ShipWreck: (() => {
      const tableId = new TableId("", "ShipWreck");
      return defineComponent(
        world,
        {
          playerId: RecsType.String,
        },
        {
          metadata: {
            contractId: tableId.toHexString(),
            tableId: tableId.toString(),
          },
        }
      );
    })(),
  };
}
