FROM solanalabs/rust:1.59.0 AS builder

COPY . /opt
WORKDIR /opt
RUN cargo build

#FROM neonlabsorg/solana:v1.9.12-testnet-with_trx_cap AS solana
FROM solanalabs/solana:v1.10.19 AS solana
COPY --from=builder /opt/target/debug/libsolana_geyser_plugin_postgres.so /solana/target/release/
COPY accountsdb-plugin-config.json /opt

