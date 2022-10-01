# Note

You need to fork ETH mainnet to access the Exosama contract state. You will need to pass your own Alchemy key (they are free with sign-up).
# To run all tests

```
forge test --fork-url https://eth-mainnet.g.alchemy.com/v2/${API_KEY} -vvvvv
```

# To run specific tests


```
forge test --fork-url https://eth-mainnet.g.alchemy.com/v2/${API_KEY} -vvvvv --match-test testBurnWithLock
```

# To Debug
```
forge test --fork-url https://eth-mainnet.g.alchemy.com/v2/${API_KEY} -vvvvv --debug testBurnWithLock
```

## Acknowledgements

- [paulrberg](https://github.com/paulrberg/foundry-template)

## License

[MIT](./LICENSE)