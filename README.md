# Docker Magento

Dokcer for Magento 2

## Composer Setup

Place your auth token at `~/.composer/auth.json` 

```
{
    "http-basic": {
        "repo.magento.com": {
            "username": "MAGENTO_PUBLIC_KEY",
            "password": "MAGENTO_PRIVATE_KEY"
        }
    }
}
```

## Run

docker-compose up -d
