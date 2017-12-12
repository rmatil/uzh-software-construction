Week 11
=======

* Exception asserter: An example to illustrate how to check what kind of exception was thrown

## Usage within Tests
In order to make use of this asserter within your Unit Tests, you must follow the scheme outline below to let tests pass:

```
  test_some_precondition_violation
    local
      has_exception: BOOLEAN
    do
      if not has_exception then
            -- Call something that violates the precondition.
         x.foo
            -- Report an error if the precondition is not violated.
         assert (False, "my_test")
      end
    rescue
          -- Check that this is a precondition violation with expected tag, etc.
          -- You may use the exception_asserter here.
      assert ( ... the exception is of expected type and value ..., "my_test")
      has_exception := True
      retry
   end
```
