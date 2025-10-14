# Problem - 1(a)
# 1.Pandas DataSeries:
# a.Write a Pandas program tn create and display a nne-dimensional array-like ribs ect cnntnining an array of datn using Pandaa module.

import pandas as pd
import numpy as np

data_list = pd.Series([5,10,15,20,25])
print(data_list)

# Problem - 1(b)
# b.Write a Pandas program to cont ert a Panda oiodule Series to Python list and it's

import pandas as pd
import numpy as np

data_list = pd.Series([5,10,15,20,25])
print(data_list)

data_list = data_list.tolist()
print(data_list)

# Problem - 2(a)
# Write a Pandaa program to create and display a DataFrame front a specified dictionary data which has the index labels.

import pandas as pd
import numpy as np

exam_data = {'name': ['Anastasia', 'Dima', 'Katherine', 'James', 'Emily','Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'], 
'score': [12.5, 9, 16.5, np.nan, 9, 20, 14.5, np.nan, 8, 19], 
'attempts': [1, 3, 2, 3, 2, 3, 1, 1, 2, 1], 
'qualify': ['yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes']}
labels = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j']

df = pd.DataFrame(exam_data, index = labels)
print(df)

# Problem - 2(b)
# b.Write a Pandas program tn change the name 'James' to 'Suresh' in name cnluinn of
# the DataFrame.

import pandas as pd
import numpy as np
exam_data = {'name': ['Anastasia', 'Dima', 'Katherine', 'James', 'Emily','Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'], 
'score': [12.5, 9, 16.5, np.nan, 9, 20, 14.5, np.nan, 8, 19], 
'attempts': [1, 3, 2, 3, 2, 3, 1, 1, 2, 1], 
'qualify': ['yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes']}
labels = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j']
df = pd.DataFrame(exam_data, index = labels)
df.loc['d', 'name'] = 'Suresh'
print(df)

# Problem - 2(c)
# c.Write a Pandas program to inaei4 a new column in existing DataFrame. iv)Wiate a Pandaa program tn get liat from DatnPraine column headers. x-)Wiite a Pandas prngrnin to get list from DataFrame column headers.
import pandas as pd
import numpy as np

exam_data = {'name': ['Anastasia', 'Dima', 'Katherine', 'James', 'Emily','Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'], 
'score': [12.5, 9, 16.5, np.nan, 9, 20, 14.5, np.nan, 8, 19], 
'attempts': [1, 3, 2, 3, 2, 3, 1, 1, 2, 1], 
'qualify': ['yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes']}
labels = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j']

df = pd.DataFrame(exam_data, index = labels)
df.loc['d', 'name'] = 'Suresh'

salaries = [50000, 60000, 70000, 450000, 55000, 80000, 70000, 48000, 62000, 78000]
df['salary'] = salaries
print(df)