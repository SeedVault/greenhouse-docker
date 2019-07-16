#!/bin/bash
set -e
psql -v ON_ERROR_STOP=1 --username ${POSTGRES_USER} <<-EOSQL
    CREATE DATABASE ${HYDRA_DATABASE};
    GRANT ALL PRIVILEGES ON DATABASE ${HYDRA_DATABASE} TO ${POSTGRES_USER};
    CREATE DATABASE ${ACCOUNTS_DATABASE};
    GRANT ALL PRIVILEGES ON DATABASE ${ACCOUNTS_DATABASE} TO ${POSTGRES_USER};
    CREATE DATABASE ${ACCOUNTS_TEST_DATABASE};
    GRANT ALL PRIVILEGES ON DATABASE ${ACCOUNTS_TEST_DATABASE} TO ${POSTGRES_USER};
    CREATE DATABASE ${WALLET_DATABASE};
    GRANT ALL PRIVILEGES ON DATABASE ${WALLET_DATABASE} TO ${POSTGRES_USER};
    CREATE DATABASE ${WALLET_TEST_DATABASE};
    GRANT ALL PRIVILEGES ON DATABASE ${WALLET_TEST_DATABASE} TO ${POSTGRES_USER};
    CREATE DATABASE ${GREENHOUSE_DATABASE};
    GRANT ALL PRIVILEGES ON DATABASE ${GREENHOUSE_DATABASE} TO ${POSTGRES_USER};
    CREATE DATABASE ${GREENHOUSE_TEST_DATABASE};
    GRANT ALL PRIVILEGES ON DATABASE ${GREENHOUSE_TEST_DATABASE} TO ${POSTGRES_USER};
EOSQL