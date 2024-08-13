#!/usr/bin/env python3

import btc_info

taxa = btc_info.taxas_onchain_formatado()
print(f"Alta({taxa['fastestFee']}) | Média({taxa['halfHourFee']}) | Baixa({taxa['hourFee']})")