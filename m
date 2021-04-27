X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["698" "Tuesday" "27" "April" "2021" "09:26:59" "+0530" "Bharat Viswanadham" "bharat@apache.org" nil "26" "[oss-security] CVE-2020-17517: Apache Ozone: Ozone S3 Gateway allows bucket and key access to non authenticated users" nil nil nil "4" nil nil (number mark "U       bharat@apach Apr 27   26/698   " thread-indent "\"[oss-security] CVE-2020-17517: Apache Ozone: Ozone S3 Gateway allows bucket and key access to non authenticated users\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-17517: Apache Ozone: Ozone S3 Gateway allows bucket and key access to non authenticated users" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9454 invoked by uid 550); 27 Apr 2021 06:43:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17494 invoked from network); 27 Apr 2021 03:57:23 -0000
X-Gm-Message-State: AOAM531CavqTePpQ74t7qamlSUHNAs8Ud8zvKERULB5cS0GjYMVLAGch
	waRsnyEQDFkp2EhFIvd//Opd4HzIJEZvTE/cOiU=
X-Google-Smtp-Source: ABdhPJxRLoYchlSXjw8ns80SdvYv79uELr+UnaFy7h97z8PvxIG+HaK5Iu6TRi0mCo5bzljeTjhGlzSLYP0D4qN83iA=
X-Received: by 2002:aa7:cfd0:: with SMTP id r16mr2018918edy.330.1619495830241;
 Mon, 26 Apr 2021 20:57:10 -0700 (PDT)
MIME-Version: 1.0
From: Bharat Viswanadham <bharat@apache.org>
Date: Tue, 27 Apr 2021 09:26:59 +0530
X-Gmail-Original-Message-ID: <CABK_9Y-q9o4T33KCOQ-p1bi5DUu8EyujZtU2g7qvG3WjXeKc6A@mail.gmail.com>
Message-ID: <CABK_9Y-q9o4T33KCOQ-p1bi5DUu8EyujZtU2g7qvG3WjXeKc6A@mail.gmail.com>
To: users@ozone.apache.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ad477405c0ec418a"
Subject: [oss-security] CVE-2020-17517: Apache Ozone: Ozone S3 Gateway allows bucket and key
 access to non authenticated users

--000000000000ad477405c0ec418a
Content-Type: text/plain; charset="UTF-8"

Description:

The S3 buckets and keys in a secure Apache Ozone Cluster must be
inaccessible to anonymous access by default. The current security
vulnerability allows access to keys and buckets through a curl command
or an unauthenticated HTTP request. This enables unauthorized access
to buckets and keys thereby exposing data to anonymous clients or
users.  This affected Apache Ozone prior to the 1.1.0 release.

Mitigation:

Upgrade to the latest Apache Ozone 1.1.0 release.

Credit:

Apache Ozone would like to thank Kota Uenishi for reporting this issue.


Thanks,

Apache Ozone Team.

--000000000000ad477405c0ec418a--
