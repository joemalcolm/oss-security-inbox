X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1471" "Friday" "14" "August" "2020" "17:14:08" "-0400" "David Smiley" "dsmiley@apache.org" nil "36" nil nil nil nil "8" nil nil (number mark "U       dsmiley@apac Aug 14   36/1471  " thread-indent "\"[oss-security] [CVE-2020-13941] Apache Solr information disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-13941] Apache Solr information disclosure vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14025 invoked by uid 550); 15 Aug 2020 07:57:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1916 invoked from network); 14 Aug 2020 21:14:32 -0000
X-Gm-Message-State: AOAM533ggoydAJcQKj8gqv6rlnGM+TU+CFuHFXICbsaMRc5xgYg4b+ZB
	BkMH0eB1Z27sYg8zxLUnxksLmgRLi/5De0PGOA==
X-Google-Smtp-Source: ABdhPJz2Kose2HKOeuEkUnYPE6BsOqTQUqwpowrOOBCm4nj8zprpEoFQmCZPJlz4MdoYDqNGqI2nrAvfAnWb3vFSExc=
X-Received: by 2002:a25:3bce:: with SMTP id i197mr6390943yba.426.1597439659580;
 Fri, 14 Aug 2020 14:14:19 -0700 (PDT)
MIME-Version: 1.0
From: David Smiley <dsmiley@apache.org>
Date: Fri, 14 Aug 2020 17:14:08 -0400
X-Gmail-Original-Message-ID: <CABEwPvGwaijionFNmS7vMCTFkQ20Mp+KTBCp3wr+A02EFjyUrQ@mail.gmail.com>
Message-ID: <CABEwPvGwaijionFNmS7vMCTFkQ20Mp+KTBCp3wr+A02EFjyUrQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000075a1a305acdce7b1"
Subject: [oss-security] [CVE-2020-13941] Apache Solr information disclosure vulnerability

--00000000000075a1a305acdce7b1
Content-Type: text/plain; charset="UTF-8"

Reported in SOLR-14515 (private) and fixed in SOLR-14561 (public), released
in Solr version 8.6.0.
The Replication handler (
https://lucene.apache.org/solr/guide/8_6/index-replication.html#http-api-commands-for-the-replicationhandler)
allows commands backup, restore and deleteBackup. Each of these take a
location parameter, which was not validated, i.e you could read/write to
any location the solr user can access.

On a windows system SMB paths such as \\10.0.0.99\share\folder may also be
used, leading to:
* The possibility of restoring another SolrCore from a server on the
network (or mounted remote file system) may lead to:
** Exposing search index data that the attacker should otherwise not have
access to
** Replacing the index data entirely by loading it from a remote file
system that the attacker controls

* Launching SMB attacks which may result in:
** The exfiltration of sensitive data such as OS user hashes (NTLM/LM
hashes),
** In case of misconfigured systems, SMB Relay Attacks which can lead to
user impersonation on SMB Shares or, in a worse-case scenario, Remote Code
Execution

The solution implemented to address these issues was to:
* Restrict the location parameter to trusted paths
* Prevent remote connection when using Windows UNC Paths

~ David Smiley
Apache Lucene/Solr Search Developer
http://www.linkedin.com/in/davidwsmiley

--00000000000075a1a305acdce7b1--
