FROM solanalabs/rust:1.59.0 AS builder

COPY . /opt
WORKDIR /opt
RUN cargo build --release

FROM neonlabsorg/solana:v1.9.12-testnet-with_trx_cap AS solana
COPY --from=builder /opt/target/release/libsolana_accountsdb_plugin_postgres.so /solana/target/release/
COPY accountsdb-plugin-config.json /opt

