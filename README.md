# aure_ex

SDK oficial da API AureEX para Ruby.

## Instalação

```bash
gem install aure_ex
```

## Uso

```ruby
require 'aure_ex'

aure_ex = AureEx.new(
  api_key: ENV['AUREEX_API_KEY'],
  api_secret: ENV['AUREEX_API_SECRET']
)

aure_ex.deposits.create({
  method: 'usdt',
  reference: 'order-1',
  amount: 10_000
})
aure_ex.webhooks.list
aure_ex.company.balance
aure_ex.conversions.quote({ from: 'USDT', to: 'BRL', amount: 100 })
```

## Mapa de métodos

| SDK | HTTP |
| --- | --- |
| `aure_ex.deposits` | `/v1/deposits` |
| `aure_ex.withdrawals` | `/v1/withdrawals` |
| `aure_ex.webhooks` | `/v1/webhooks` |
| `aure_ex.company.get` / `balance` | `/v1/company`, `/v1/company/balance` |
| `aure_ex.conversions` / `quote` | `/v1/conversions`, `/v1/conversions/quote` |

Docs: https://api.aure-ex.com/docs/sdks  
OpenAPI: https://api.aure-ex.com/openapi.yaml
