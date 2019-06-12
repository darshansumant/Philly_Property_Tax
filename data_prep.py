# ------------------------------------------ #
# Code for Download data from OpenDataPhilly #
# ------------------------------------------ #

import os
import csv
import numpy as np
import pandas as pd
import time
import io
import requests

# Import data from the Philly Open Data Portal
url2 = 'https://phl.carto.com/api/v2/sql?q=SELECT+*,+ST_Y(the_geom)+AS+lat,+ST_X(the_geom)+AS+lng+FROM+opa_properties_public&filename=opa_properties_public&format=csv&skipfields=cartodb_id,the_geom,the_geom_webmercator'
df = pd.read_csv(url2)

# Choose required columns and convert to required formats
df_subset = df[['parcel_number', 'taxable_building', 'taxable_land', 'market_value', 'zip_code']]
df_subset.parcel_number = df_subset.parcel_number.astype(str)
df_subset.taxable_building = df_subset.taxable_building.astype(int)
df_subset.taxable_land = df_subset.taxable_land.astype(int)
df_subset.market_value = df_subset.market_value.astype(int)

# Clean Zip Code to keep only the first 5 digits, ignore NaNs & error Zips
df_subset['zip_code'] = df_subset.zip_code.str[:5].astype(str)
chosen_zips = df_subset.zip_code.value_counts()[:-10]

# Output as CSV files to be import into the App Database
df_subset[df_subset.zip_code.isin(list(chosen_zips.index))].to_csv('parcels_data.csv',
                                                                   index=False)
chosen_zips.to_csv('zips_data.csv', header=['description'],
                   index=True, index_label='name')
