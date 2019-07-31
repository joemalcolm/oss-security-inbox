X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1322" "Thursday" "1" "August" "2019" "00:25:42" "+0200" "David Smiley" "dsmiley@apache.org" "<CABEwPvFHSuV=-exfjiCedkJrEvo6Kvc0S72nsze7x1+kJ-nLhA@mail.gmail.com>" "32" "[oss-security] [CVE-2019-0193] Apache Solr, Remote Code Execution via DataImportHandler" nil nil nil "8" "2019073122:25:42" "[oss-security] [CVE-2019-0193] Apache Solr, Remote Code Execution via DataImportHandler" (number mark "U       dsmiley@apac Aug  1   32/1322  " thread-indent "\"[oss-security] [CVE-2019-0193] Apache Solr, Remote Code Execution via DataImportHandler\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-0193] Apache Solr, Remote Code Execution via DataImportHandler" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16312 invoked by uid 550); 1 Aug 2019 06:42:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24346 invoked from network); 31 Jul 2019 22:25:29 -0000
X-Gm-Message-State: APjAAAUdbmfbzExgtlPsoe2woEyMlyCb7M2X8zKOyvq54TlbkThmfd9+
	guINZE7mDqzRpYToS2PKEG6KK5S/ydXikCnDaA==
X-Google-Smtp-Source: APXvYqz3QofGgp7sTy2eCr6GiQ+BPie+SMTxlIPQCSquXD5c/qzofvlaV7AKiffHbTgqWQbZ7Ygasfbk5RaKf+MDfA8=
X-Received: by 2002:aca:f441:: with SMTP id s62mr64078350oih.109.1564611916905;
 Wed, 31 Jul 2019 15:25:16 -0700 (PDT)
MIME-Version: 1.0
From: David Smiley <dsmiley@apache.org>
Date: Thu, 1 Aug 2019 00:25:42 +0200
X-Gmail-Original-Message-ID: <CABEwPvFHSuV=-exfjiCedkJrEvo6Kvc0S72nsze7x1+kJ-nLhA@mail.gmail.com>
Message-ID: <CABEwPvFHSuV=-exfjiCedkJrEvo6Kvc0S72nsze7x1+kJ-nLhA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000084c2d4058f019977"
Subject: [oss-security] [CVE-2019-0193] Apache Solr, Remote Code Execution via DataImportHandler

--00000000000084c2d4058f019977
Content-Type: text/plain; charset="UTF-8"

The DataImportHandler, an optional but popular module to pull in data from
databases and other sources, has a feature in which the whole DIH
configuration can come from a request's "dataConfig" parameter. The debug
mode of the DIH admin screen uses this to allow convenient debugging /
development of a DIH config. Since a DIH config can contain scripts, this
parameter is a security risk. Starting with version 8.2.0 of Solr, use of
this parameter requires setting the Java System property
"enable.dih.dataConfigParam" to true.

Mitigations:
* Upgrade to 8.2.0 or later, which is secure by default.
* or, edit solrconfig.xml to configure all DataImportHandler usages with an
"invariants" section listing the "dataConfig" parameter set to am empty
string.
* Ensure your network settings are configured so that only trusted traffic
communicates with Solr, especially to the DIH request handler.  This is a
best practice to all of Solr.

Credits:
* Michael Stepankin (JPMorgan Chase)

References:
* https://issues.apache.org/jira/browse/SOLR-13669
* https://cwiki.apache.org/confluence/display/solr/SolrSecurity

Please direct any replies as either comments in the JIRA issue above or to
solr-user@lucene.apache.org

--00000000000084c2d4058f019977--
