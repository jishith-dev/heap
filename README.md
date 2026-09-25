# Heap

author: Jishith M P

A type-specific **min-heap** collection for Zen.

A min-heap always keeps the smallest value at the top, allowing the minimum value to be retrieved and removed efficiently.

Supported types:

- `int`
- `bool`
- `double`
- `long`
- `byte`
- `string`

## Installation

    zen install heap

## Usage

    import (Heap) from "heap"

    Heap h

    h.pushInt(50)
    h.pushInt(20)
    h.pushInt(40)
    h.pushInt(10)
    h.pushInt(30)

    screen(h.peekInt())  // 10

    screen(h.popInt())   // 10
    screen(h.popInt())   // 20
    screen(h.popInt())   // 30

## API

### Integer

    h.pushInt(value)
    h.popInt()
    h.peekInt()
    h.sizeInt()
    h.isEmptyInt()

### Boolean

    h.pushBool(value)
    h.popBool()
    h.peekBool()
    h.sizeBool()
    h.isEmptyBool()

`false` has higher priority than `true`.

### Double

    h.pushDouble(value)
    h.popDouble()
    h.peekDouble()
    h.sizeDouble()
    h.isEmptyDouble()

### Long

    h.pushLong(value)
    h.popLong()
    h.peekLong()
    h.sizeLong()
    h.isEmptyLong()

### Byte

    h.pushByte(value)
    h.popByte()
    h.peekByte()
    h.sizeByte()
    h.isEmptyByte()

### String

    h.pushString(value)
    h.popString()
    h.peekString()
    h.sizeString()
    h.isEmptyString()

Strings are ordered lexicographically.

## Behavior

A heap maintains the minimum value at the top.

    h.pushInt(50)
    h.pushInt(10)
    h.pushInt(30)
    h.pushInt(20)

    h.peekInt()  // 10

    h.popInt()   // 10
    h.popInt()   // 20
    h.popInt()   // 30
    h.popInt()   // 50

`push*()` adds a value to the heap.

`pop*()` returns and removes the minimum value.

`peek*()` returns the minimum value without removing it.

`size*()` returns the number of values currently stored for that type.

`isEmpty*()` returns `true` when the corresponding heap is empty.

## Complexity

| Operation | Complexity |
|-----------|------------|
| `push*()` | O(log n) |
| `pop*()` | O(log n) |
| `peek*()` | O(1) |
| `size*()` | O(1) |
| `isEmpty*()` | O(1) |

## Supported Types

| Type | Push | Pop | Peek | Size | Is Empty |
|------|------|-----|------|------|----------|
| `int` | `pushInt()` | `popInt()` | `peekInt()` | `sizeInt()` | `isEmptyInt()` |
| `bool` | `pushBool()` | `popBool()` | `peekBool()` | `sizeBool()` | `isEmptyBool()` |
| `double` | `pushDouble()` | `popDouble()` | `peekDouble()` | `sizeDouble()` | `isEmptyDouble()` |
| `long` | `pushLong()` | `popLong()` | `peekLong()` | `sizeLong()` | `isEmptyLong()` |
| `byte` | `pushByte()` | `popByte()` | `peekByte()` | `sizeByte()` | `isEmptyByte()` |
| `string` | `pushString()` | `popString()` | `peekString()` | `sizeString()` | `isEmptyString()` |

## License

MIT
