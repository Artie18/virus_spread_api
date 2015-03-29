require 'net/http'
require 'json'

uri = '127.0.0.1:4508/api/kiss'

json = '[
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.686,
      "lat": 53.984
    },
    "time": "Mon Sep 07 1992 06:31:06 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.637,
      "lat": 53.881
    },
    "time": "Sun Aug 19 2001 14:06:49 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.673,
      "lat": 53.894
    },
    "time": "Wed Jan 29 1975 10:27:44 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.646,
      "lat": 53.911
    },
    "time": "Tue Mar 12 2002 11:09:12 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.618,
      "lat": 53.834
    },
    "time": "Mon Nov 07 1994 13:25:41 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.71,
      "lat": 53.915
    },
    "time": "Wed Aug 27 1975 01:49:03 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.579,
      "lat": 53.854
    },
    "time": "Thu Jan 04 2001 11:52:54 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.55,
      "lat": 53.968
    },
    "time": "Wed Sep 07 2011 15:40:39 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.689,
      "lat": 53.914
    },
    "time": "Thu Mar 13 2003 05:53:45 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.655,
      "lat": 53.967
    },
    "time": "Fri Sep 22 1972 20:47:45 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.656,
      "lat": 53.851
    },
    "time": "Fri Nov 03 1995 01:31:27 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.603,
      "lat": 53.852
    },
    "time": "Fri Aug 04 1989 16:13:19 GMT+0400 (MSD)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.694,
      "lat": 53.971
    },
    "time": "Fri Jan 20 2012 22:04:53 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.587,
      "lat": 53.808
    },
    "time": "Wed Aug 05 1987 09:50:28 GMT+0400 (MSD)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.542,
      "lat": 53.972
    },
    "time": "Fri Mar 23 2001 00:29:07 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.669,
      "lat": 53.815
    },
    "time": "Fri Apr 18 2014 11:37:47 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.604,
      "lat": 53.948
    },
    "time": "Thu Nov 16 2000 00:10:37 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.537,
      "lat": 53.875
    },
    "time": "Thu Dec 24 1987 03:00:08 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.658,
      "lat": 53.91
    },
    "time": "Thu Jan 07 1999 18:40:55 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.707,
      "lat": 53.914
    },
    "time": "Tue Mar 18 1997 11:36:47 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.659,
      "lat": 53.949
    },
    "time": "Wed Apr 21 1993 09:57:14 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.586,
      "lat": 53.872
    },
    "time": "Wed Jan 11 2006 11:50:47 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.573,
      "lat": 53.818
    },
    "time": "Thu Jan 01 2015 02:26:47 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.584,
      "lat": 53.803
    },
    "time": "Tue Sep 03 1974 05:56:13 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.666,
      "lat": 53.841
    },
    "time": "Sat Feb 23 2008 19:25:13 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.714,
      "lat": 53.993
    },
    "time": "Thu Sep 11 1986 03:52:32 GMT+0400 (MSD)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.553,
      "lat": 53.938
    },
    "time": "Mon Jun 18 1984 06:25:05 GMT+0400 (MSD)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.696,
      "lat": 53.909
    },
    "time": "Thu Jul 24 2003 10:23:04 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.704,
      "lat": 53.91
    },
    "time": "Mon Sep 10 1973 01:22:07 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.705,
      "lat": 53.939
    },
    "time": "Sat Jan 13 1973 01:57:27 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.539,
      "lat": 53.992
    },
    "time": "Mon Dec 05 1983 10:04:23 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.564,
      "lat": 53.849
    },
    "time": "Mon May 12 2014 05:31:06 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.586,
      "lat": 53.842
    },
    "time": "Wed May 07 1980 09:57:28 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.677,
      "lat": 53.89
    },
    "time": "Sat Dec 25 1971 06:49:16 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.56,
      "lat": 53.922
    },
    "time": "Mon Oct 15 1990 11:52:46 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.67,
      "lat": 53.822
    },
    "time": "Sat Jun 17 1995 04:21:13 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.674,
      "lat": 53.937
    },
    "time": "Fri Oct 08 2004 10:14:47 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.574,
      "lat": 53.877
    },
    "time": "Fri Oct 22 1971 06:25:01 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.579,
      "lat": 53.887
    },
    "time": "Wed Dec 06 2006 07:08:18 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.72,
      "lat": 53.978
    },
    "time": "Sun Oct 22 2000 16:43:22 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.658,
      "lat": 53.902
    },
    "time": "Sat Sep 23 2000 17:40:37 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.707,
      "lat": 53.863
    },
    "time": "Wed Apr 06 1977 11:36:18 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.588,
      "lat": 53.985
    },
    "time": "Tue Dec 03 1991 13:03:27 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.637,
      "lat": 53.827
    },
    "time": "Wed Feb 15 2012 14:10:35 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.561,
      "lat": 53.83
    },
    "time": "Mon Jul 28 2014 10:38:48 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.616,
      "lat": 53.974
    },
    "time": "Thu Mar 12 2009 07:02:13 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.625,
      "lat": 53.935
    },
    "time": "Mon Jun 15 1992 08:27:35 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.56,
      "lat": 53.893
    },
    "time": "Sun Mar 10 1985 16:35:58 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.626,
      "lat": 53.907
    },
    "time": "Tue Jul 30 1996 06:08:24 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.551,
      "lat": 53.907
    },
    "time": "Sun Sep 20 2009 07:49:46 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.677,
      "lat": 53.944
    },
    "time": "Thu Feb 18 1999 17:59:20 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.705,
      "lat": 53.901
    },
    "time": "Wed Apr 30 1986 12:16:39 GMT+0400 (MSD)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.564,
      "lat": 53.952
    },
    "time": "Mon Feb 22 1993 14:08:40 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.586,
      "lat": 53.945
    },
    "time": "Fri Jun 14 2013 09:08:59 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.601,
      "lat": 53.837
    },
    "time": "Thu Oct 18 2012 12:35:08 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.609,
      "lat": 53.819
    },
    "time": "Fri Jul 02 2010 22:30:00 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.597,
      "lat": 53.974
    },
    "time": "Wed May 21 2008 15:53:14 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.699,
      "lat": 53.847
    },
    "time": "Fri Feb 21 1992 12:32:22 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.641,
      "lat": 53.865
    },
    "time": "Wed Sep 17 2008 13:10:21 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.643,
      "lat": 53.953
    },
    "time": "Thu Jul 24 1980 16:21:56 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.622,
      "lat": 53.87
    },
    "time": "Wed Apr 12 2000 02:48:26 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.574,
      "lat": 53.89
    },
    "time": "Mon May 19 2003 05:20:53 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.631,
      "lat": 53.844
    },
    "time": "Wed Feb 08 2012 07:55:47 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.569,
      "lat": 53.944
    },
    "time": "Sun Oct 10 1982 01:44:46 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.605,
      "lat": 53.854
    },
    "time": "Sun May 15 2011 18:24:09 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.572,
      "lat": 53.865
    },
    "time": "Mon Jul 14 2003 01:42:01 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.639,
      "lat": 53.927
    },
    "time": "Mon Nov 22 1982 22:19:14 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.576,
      "lat": 53.847
    },
    "time": "Wed Feb 04 1987 00:18:36 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.57,
      "lat": 53.968
    },
    "time": "Mon Jun 04 2001 12:43:16 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.541,
      "lat": 53.959
    },
    "time": "Thu Jan 25 2001 07:08:31 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.685,
      "lat": 53.844
    },
    "time": "Thu Jan 08 1970 23:58:02 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.642,
      "lat": 53.842
    },
    "time": "Tue Feb 28 1984 03:23:07 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.608,
      "lat": 53.967
    },
    "time": "Sat Jan 08 2005 21:57:14 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.575,
      "lat": 53.865
    },
    "time": "Thu Jul 24 1997 16:15:11 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.6,
      "lat": 53.901
    },
    "time": "Sun Dec 06 1992 03:29:51 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.657,
      "lat": 53.826
    },
    "time": "Tue Jul 06 1982 12:39:24 GMT+0400 (MSD)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.713,
      "lat": 53.808
    },
    "time": "Mon Apr 10 1995 18:21:33 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.531,
      "lat": 53.961
    },
    "time": "Wed Apr 14 1976 09:15:59 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.645,
      "lat": 53.898
    },
    "time": "Mon Dec 18 1995 06:44:16 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.663,
      "lat": 53.936
    },
    "time": "Thu Aug 22 1991 19:56:03 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.629,
      "lat": 53.821
    },
    "time": "Mon Jan 31 1977 16:16:31 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.634,
      "lat": 53.986
    },
    "time": "Thu Oct 16 2008 20:29:21 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.658,
      "lat": 53.98
    },
    "time": "Sat Mar 22 2008 12:38:11 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.61,
      "lat": 53.958
    },
    "time": "Mon Aug 27 1973 01:26:26 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.693,
      "lat": 53.807
    },
    "time": "Fri Jan 09 1981 13:18:27 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.646,
      "lat": 53.908
    },
    "time": "Sun Apr 22 2012 14:21:07 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.617,
      "lat": 53.841
    },
    "time": "Sat Dec 28 2002 14:11:15 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.553,
      "lat": 53.859
    },
    "time": "Thu Jul 19 1973 04:49:01 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.597,
      "lat": 53.969
    },
    "time": "Tue May 13 1997 07:15:50 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.635,
      "lat": 53.981
    },
    "time": "Tue Apr 25 2000 04:11:20 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.662,
      "lat": 53.813
    },
    "time": "Sun Jun 05 1994 13:37:31 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.667,
      "lat": 53.827
    },
    "time": "Mon Aug 24 1992 02:40:22 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.709,
      "lat": 53.964
    },
    "time": "Thu Apr 20 2000 16:25:51 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.666,
      "lat": 53.906
    },
    "time": "Thu Mar 23 1995 03:43:21 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.541,
      "lat": 53.97
    },
    "time": "Fri May 04 2001 18:11:22 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.625,
      "lat": 53.817
    },
    "time": "Sun Mar 31 1985 22:28:03 GMT+0400 (MSD)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.627,
      "lat": 53.818
    },
    "time": "Mon May 09 1983 13:36:40 GMT+0400 (MSD)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.538,
      "lat": 53.812
    },
    "time": "Sun May 14 1972 17:32:52 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.604,
      "lat": 53.924
    },
    "time": "Sat Oct 03 2009 18:17:22 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.654,
      "lat": 53.817
    },
    "time": "Sun Mar 25 2012 22:46:01 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.543,
      "lat": 53.935
    },
    "time": "Fri Sep 10 1982 13:07:07 GMT+0400 (MSD)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.566,
      "lat": 53.948
    },
    "time": "Sat Jul 29 1972 20:59:31 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.656,
      "lat": 53.994
    },
    "time": "Sat Dec 22 1973 16:39:46 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.551,
      "lat": 53.998
    },
    "time": "Thu Feb 03 2011 17:12:23 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.549,
      "lat": 53.982
    },
    "time": "Sat Jul 01 1972 19:14:52 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.562,
      "lat": 53.953
    },
    "time": "Sat Feb 20 2010 17:54:21 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.602,
      "lat": 53.985
    },
    "time": "Tue Mar 22 1994 21:17:12 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.63,
      "lat": 53.831
    },
    "time": "Wed Apr 14 1982 13:03:56 GMT+0400 (MSD)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.617,
      "lat": 53.869
    },
    "time": "Fri Jul 23 2010 20:51:39 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.579,
      "lat": 53.803
    },
    "time": "Fri Aug 26 1983 00:06:24 GMT+0400 (MSD)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.591,
      "lat": 53.931
    },
    "time": "Tue Dec 17 2013 21:05:57 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.657,
      "lat": 53.866
    },
    "time": "Mon Apr 11 2011 18:11:32 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.549,
      "lat": 53.998
    },
    "time": "Sat Jan 17 2004 04:21:33 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.7,
      "lat": 53.841
    },
    "time": "Fri Apr 06 2001 03:56:21 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.713,
      "lat": 53.884
    },
    "time": "Sat Jun 19 1976 11:59:56 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.692,
      "lat": 53.879
    },
    "time": "Mon Dec 13 2010 09:46:42 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.718,
      "lat": 53.907
    },
    "time": "Wed Sep 15 1993 05:14:02 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.65,
      "lat": 53.986
    },
    "time": "Sat Feb 05 2005 20:44:59 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.683,
      "lat": 53.972
    },
    "time": "Mon May 27 1996 08:36:01 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.644,
      "lat": 53.825
    },
    "time": "Wed May 10 1972 14:58:40 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.531,
      "lat": 53.807
    },
    "time": "Sun Dec 17 1995 04:21:21 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.62,
      "lat": 53.868
    },
    "time": "Fri Apr 07 2006 01:01:51 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.622,
      "lat": 53.822
    },
    "time": "Sun Jul 26 1992 06:04:15 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.639,
      "lat": 53.817
    },
    "time": "Sat Mar 10 2001 11:51:20 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.675,
      "lat": 53.967
    },
    "time": "Thu Jan 31 1991 12:01:32 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.634,
      "lat": 53.938
    },
    "time": "Wed Jan 23 2013 17:06:26 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.673,
      "lat": 53.916
    },
    "time": "Tue Jan 20 1976 21:46:47 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.602,
      "lat": 53.94
    },
    "time": "Sun Jul 31 1994 12:12:38 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.715,
      "lat": 53.892
    },
    "time": "Wed Dec 03 1986 19:28:36 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.591,
      "lat": 53.877
    },
    "time": "Mon Dec 22 2003 03:12:11 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.604,
      "lat": 53.903
    },
    "time": "Sun Sep 26 1976 03:04:41 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.615,
      "lat": 53.879
    },
    "time": "Wed Oct 31 2012 19:31:25 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.54,
      "lat": 53.815
    },
    "time": "Sun Aug 22 1976 20:44:43 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.704,
      "lat": 53.91
    },
    "time": "Wed Jul 24 1985 21:54:13 GMT+0400 (MSD)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.547,
      "lat": 53.832
    },
    "time": "Wed Jun 23 1999 11:44:21 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.658,
      "lat": 53.82
    },
    "time": "Thu Jan 22 2009 08:32:18 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.704,
      "lat": 53.893
    },
    "time": "Sun Apr 10 1983 03:57:30 GMT+0400 (MSD)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.712,
      "lat": 53.941
    },
    "time": "Thu Sep 11 2003 05:28:15 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.54,
      "lat": 53.814
    },
    "time": "Thu Jul 15 2004 05:20:31 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.543,
      "lat": 53.83
    },
    "time": "Tue May 19 1992 07:46:13 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.587,
      "lat": 53.851
    },
    "time": "Sat Apr 14 1984 15:58:43 GMT+0400 (MSD)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.591,
      "lat": 53.984
    },
    "time": "Mon Dec 06 1982 18:05:58 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.616,
      "lat": 53.911
    },
    "time": "Sun Nov 16 2003 14:17:28 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.653,
      "lat": 53.875
    },
    "time": "Fri Aug 19 1988 23:04:45 GMT+0400 (MSD)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.589,
      "lat": 53.828
    },
    "time": "Thu Aug 29 2013 19:57:49 GMT+0300 (FET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.639,
      "lat": 53.98
    },
    "time": "Mon Aug 23 1999 13:24:09 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.668,
      "lat": 53.921
    },
    "time": "Wed Mar 11 1970 05:40:49 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.634,
      "lat": 53.945
    },
    "time": "Sun Oct 29 1978 18:24:03 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.689,
      "lat": 53.931
    },
    "time": "Mon Nov 30 1998 05:47:37 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.556,
      "lat": 53.834
    },
    "time": "Mon Feb 01 1982 03:54:27 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.625,
      "lat": 53.818
    },
    "time": "Sat Nov 07 1998 19:39:37 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.624,
      "lat": 53.945
    },
    "time": "Fri Jul 21 2000 04:26:58 GMT+0400 (EEST)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.636,
      "lat": 53.8
    },
    "time": "Thu Nov 12 1970 07:19:14 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.701,
      "lat": 53.857
    },
    "time": "Fri Dec 27 1996 11:48:39 GMT+0300 (EET)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.532,
      "lat": 53.971
    },
    "time": "Sat Sep 04 1971 21:08:02 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.657,
      "lat": 53.857
    },
    "time": "Fri Mar 27 1987 02:00:54 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.657,
      "lat": 53.857
    },
    "time": "Fri Mar 27 1987 02:00:54 GMT+0300 (MSK)",
    "radius": 2000
  },
  {
    "deviceId": "bd42fc70-3261-4cd7-a89d-a7a641cf9827",
    "foreignId": "1810ae2d-ae1e-4daf-9a77-4ffc54796044",
    "location": {
      "ln": 27.657,
      "lat": 53.857
    },
    "time": "Fri Mar 27 1987 02:00:54 GMT+0300 (MSK)",
    "radius": 2000
  }
]'

hash = JSON.parse(json)

# ?deviceId=1810ae2d-ae1e-4daf-9a77-4ffc54796044&foreignId=bd42fc70-3261-4cd7-a89d-a7a641cf9827&location[ln]=27.550433&location[lat]=53.908305&time=Sat Mar 28 2015 06:21:08 GMT+0300 (MSK)
hash.each do |obj|
  u = "#{uri}?deviceId=#{obj['deviceId']}&foreignId=#{obj['foreignId']}&location[ln]=#{obj['location']['ln']}&location[lat]=#{obj['location']['lat']}&time=#{obj['time']}".gsub(' ', '%20')
  p "CURL -g -X GET \"#{u}\""
  system "CURL -g -X POST \"#{u}\""
end