X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1062" "Wednesday" "4" "April" "2018" "15:06:09" "-0700" "Daniel Dai" "daijy@apache.org" "<CABDpyChmEOPSBAxb+ipyGVfhuS4Zq+w0CFn-EANy+_TD0o-8+w@mail.gmail.com>" "22" "[oss-security] [SECURITY] CVE-2018-1284: Hive UDF series UDFXPathXXXX allow users to pass carefully crafted XML to access arbitrary files" nil nil nil "4" "2018040422:06:09" "[oss-security] [SECURITY] CVE-2018-1284: Hive UDF series UDFXPathXXXX allow users to pass carefully crafted XML to access arbitrary files" (number mark "U       daijy@apache Apr  4   22/1062  " thread-indent "\"[oss-security] [SECURITY] CVE-2018-1284: Hive UDF series UDFXPathXXXX allow users to pass carefully crafted XML to access arbitrary files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26306 invoked by uid 550); 4 Apr 2018 23:50:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32483 invoked from network); 4 Apr 2018 22:06:31 -0000
X-Gm-Message-State: ALQs6tBVwxgkoCM3HgW1p/VMZLjheYQyurYRv+ve0a7TsSw8rwNdfz1G
	KL5YPfM+f8B2r/dMQ/g4jNpcTT0EcgChUpaNSFU=
X-Google-Smtp-Source: AIpwx4/PTCrcZxsPVnfE8csGFRXQXnuRFMxXB59K0llnbVG1ph1jGOz4ZAt2gD4TWNDbVG14ou8KDLj+kDeEh1kqSIs=
X-Received: by 10.107.101.21 with SMTP id z21mr17355154iob.3.1522879569872;
 Wed, 04 Apr 2018 15:06:09 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Dai <daijy@apache.org>
Date: Wed, 4 Apr 2018 15:06:09 -0700
X-Gmail-Original-Message-ID: <CABDpyChmEOPSBAxb+ipyGVfhuS4Zq+w0CFn-EANy+_TD0o-8+w@mail.gmail.com>
Message-ID: <CABDpyChmEOPSBAxb+ipyGVfhuS4Zq+w0CFn-EANy+_TD0o-8+w@mail.gmail.com>
To: user@hive.apache.org, dev@hive.apache.org, announce@apache.org, 
	security <security@hive.apache.org>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2018-1284: Hive UDF series UDFXPathXXXX allow users to
 pass carefully crafted XML to access arbitrary files

CVE-2018-1284: Hive UDF series UDFXPathXXXX allow users to pass
carefully crafted XML to access arbitrary files

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: This vulnerability affects all versions from 0.6.0

Description: Malicious user might use any xpath UDFs
(xpath/xpath_string/xpath_boolean/xpath_number/xpath_double/xpath_float/xpath_long/xpath_int/xpath_short)
to expose the content of a file on the machine running HiveServer2
owned by HiveServer2 user (usually hive) if
hive.server2.enable.doAs=false.

Mitigation: Users who use xpath UDFs in HiveServer2 and
hive.server2.enable.doAs=false are recommended to upgrade to 2.3.3, or
update UDFXPathUtil.java to the head of branch-2.3 and rebuild
hive-exec.jar: https://git1-us-west.apache.org/repos/asf?p=hive.git;a=blob;f=ql/src/java/org/apache/hadoop/hive/ql/udf/xml/UDFXPathUtil.java;hb=refs/heads/branch-2.3.
If these functions are not being used at present, you can also
disable its use by adding them to the value of the config
hive.server2.builtin.udf.blacklist.
