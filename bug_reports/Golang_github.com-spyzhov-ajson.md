Results do not match other implementations

The following queries provide results that do not match those of other implementations of JSONPath
(compare https://cburgmer.github.io/json-path-comparison/):

- [ ] `$["key"]`
  Input:
  ```
  {"key": "value"}
  ```
  Expected output:
  ```
  ["value"]
  ```
  Actual output:
  ```
  []
  ```

- [ ] `$[?(@['key']==42)]`
  Input:
  ```
  [{"key": 0}, {"key": 42}, {"key": -1}, {"key": 41}, {"key": 43}, {"key": 42.0001}, {"key": 41.9999}, {"key": 100}, {"some": "value"}]
  ```
  Expected output:
  ```
  [{"key": 42}]
  ```
  Error:
  ```
  wrong symbol '=' at 12
  ```

- [ ] `$[?(@[1]=='b')]`
  Input:
  ```
  [["a", "b"], ["x", "y"]]
  ```
  Expected output:
  ```
  [["a", "b"]]
  ```
  Error:
  ```
  wrong symbol '=' at 8
  ```

- [ ] `$[?(@.key=="some.value")]`
  Input:
  ```
  [{"key": "some"}, {"key": "value"}, {"key": "some.value"}]
  ```
  Expected output:
  ```
  [{"key": "some.value"}]
  ```
  Error:
  ```
  wrong request: wrong request: ?(@.key=="some.value")
  ```


For reference, the output was generated by the program in https://github.com/cburgmer/json-path-comparison/tree/master/implementations/Golang_github.com-spyzhov-ajson.