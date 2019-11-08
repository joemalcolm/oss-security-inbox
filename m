X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1179" "Thursday" "7" "November" "2019" "21:34:36" "-0800" "Micah Kornfield" "emkornfield@apache.org" "<CAK7Z5T9-mgfJR-Bc=GsBb4MXihZAkARazkkyQXzefqwxVVopTA@mail.gmail.com>" "28" "[oss-security] [CVE-2019-12408][CVE-2019-12410] Uninitialized Memory Vulnerabilities fixed in Apache Arrow 0.15.1" nil nil nil "11" "2019110805:34:36" "[oss-security] [CVE-2019-12408][CVE-2019-12410] Uninitialized Memory Vulnerabilities fixed in Apache Arrow 0.15.1" (number mark "U       emkornfield@ Nov  7   28/1179  " thread-indent "\"[oss-security] [CVE-2019-12408][CVE-2019-12410] Uninitialized Memory Vulnerabilities fixed in Apache Arrow 0.15.1\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-12408][CVE-2019-12410] Uninitialized Memory Vulnerabilities fixed in Apache Arrow 0.15.1" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10120 invoked by uid 550); 8 Nov 2019 06:57:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25656 invoked from network); 8 Nov 2019 05:35:00 -0000
X-Gm-Message-State: APjAAAV9N6QWztqfatxLijiOaMMIyjRAObXR7gW/M15OMOssXXevyEAS
	Z3nPXqqtIpw5bPcsj3+J43Z2KrieFAzTvXEdWco=
X-Google-Smtp-Source: APXvYqwyQc9qefaASHrLgJHOW6lRzmtqtRw5+jy+W9pqcsfqcuryvYvJ1vW0AbGqg1oim5Ncd9ik6eT6FWx2Iwq4TEk=
X-Received: by 2002:ac2:549a:: with SMTP id t26mr5021697lfk.25.1573191287227;
 Thu, 07 Nov 2019 21:34:47 -0800 (PST)
MIME-Version: 1.0
From: Micah Kornfield <emkornfield@apache.org>
Date: Thu, 7 Nov 2019 21:34:36 -0800
X-Gmail-Original-Message-ID: <CAK7Z5T9-mgfJR-Bc=GsBb4MXihZAkARazkkyQXzefqwxVVopTA@mail.gmail.com>
Message-ID: <CAK7Z5T9-mgfJR-Bc=GsBb4MXihZAkARazkkyQXzefqwxVVopTA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: security@apache.org
Content-Type: multipart/alternative; boundary="000000000000d6ca800596cf2384"
Subject: [oss-security] [CVE-2019-12408][CVE-2019-12410] Uninitialized Memory Vulnerabilities
 fixed in Apache Arrow 0.15.1

--000000000000d6ca800596cf2384
Content-Type: text/plain; charset="UTF-8"

The Apache Arrow project would like to hereby disclose that our 0.15.1
release patches two uninitialized memory bugs (CVE-2019-12408 and
CVE-2019-12410) in the the C++ implementation (which in turn can affect,
Python, Ruby and R).  In both cases there is a potential vulnerability
where data in memory can be unintentionally shared if Arrow Arrays are
transmitted over the wire (for instance with Flight) or persisted in the
streaming IPC and file formats.  Neither bug affects data persisted to the
Apache Parquet file format.


The first issue (CVE-2019-12408) affected ArrayBuilder classes in 0.14.0
and 0.14.1 releases.  In some cases arrays with null values could be built
using uninitialized memory for their data segment.


The second bug (CVE-2019-12410) affected Apache Arrow versions since at
least 0.12.0.  The bug left data read from Apache Parquet files with RLE
null encoded data uninitialized.


It is recommended that users upgrade to 0.15.1 as soon as possible and
audit any data that has been persisted in the Arrow IPC format or the Arrow
File Format.

--000000000000d6ca800596cf2384--
