X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2150" "Thursday" "16" "April" "2015" "18:05:30" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150416220530.E9FC03AE00F@smtpvbsrv1.mitre.org>" "51" "[oss-security] Re: CVE Request: Arbitary Code Execution in Apache Spark Cluster" nil nil nil "4" "2015041622:05:30" "[oss-security] Re: CVE Request: Arbitary Code Execution in Apache Spark Cluster" (number mark "        cve-assign@m Apr 16   51/2150  " thread-indent "\"[oss-security] Re: CVE Request: Arbitary Code Execution in Apache Spark Cluster\"\n") "<CAHUQ+_bsF=VoOsFiF7jL4hzuJYU=E=XQW4z1SFHP5+mTubv+KA@mail.gmail.com>" ("<CAHUQ+_bsF=VoOsFiF7jL4hzuJYU=E=XQW4z1SFHP5+mTubv+KA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16016 invoked by uid 550); 16 Apr 2015 22:05:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15932 invoked from network); 16 Apr 2015 22:05:42 -0000
In-Reply-To: <CAHUQ+_bsF=VoOsFiF7jL4hzuJYU=E=XQW4z1SFHP5+mTubv+KA@mail.gmail.com>
Message-Id: <20150416220530.E9FC03AE00F@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 16 Apr 2015 18:05:30 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Arbitary Code Execution in Apache Spark Cluster
To: akhil@sigmoidanalytics.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> http://codebreach.in/blog/2015/03/arbitary-code-execution-in-unsecured-apache-spark-cluster/

As far as we can tell, the essence of your report is related to:

  http://spark.apache.org/docs/latest/configuration.html
  Property Name: spark.authenticate
  Default: false
  Meaning: Whether Spark authenticates its internal connections.

If a user downloads spark-1.3.0.tgz, they will find a README.md with:

  Please refer to the [Configuration guide]
  (http://spark.apache.org/docs/latest/configuration.html)
  in the online documentation for an overview on how to configure
  Spark.

Also, because the product is advertised as a "general-purpose cluster
computing system," we think that downloaders would typically have some
experience in system or network administration, and should be able to
recognize whether a trusted network exists for all "internal
connections."

It's conceivable that the documentation should be expanded to further
discuss the risks of the default spark.authenticate value. MITRE is
not going to assign a CVE ID for this. It is a judgment call for the
upstream vendor. Because the upstream vendor has a process for
assigning CVE IDs, we feel it would be simplest and best here to use
that process, even if it is often not used in cases of publicly known
vulnerabilities. See the security@apache.org address on the
http://www.apache.org/security/committers.html page. It's their
decision on how to proceed.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVMDDEAAoJEKllVAevmvms7TAH/2VS+DAzJk77Z6bIa28/YNXh
3oErKwofEMfK7jOi0bUfglWGXRKRKA8RdyDq4TkCaoskP4buXDg/i411A8zwdoIb
pxSO7ocq6LnpxmrMoNdOnU+6c9eEIYK/LbcLAPBXneQNt6XnNc7blTrAJAPM/tWU
uApr3UyVNNG6W9SbeGz4tLkEPTbNBInEshpokWTn7n83iID9VvhKFJC6x4wCRb3q
paRpxzg7N3AWjm0uSQu3UJRTpKEbyFCFt0rHn7DWVQ2fZlj4K7VXnkCNYzE1ssbZ
S8iEhT09SKEg5sqqVN5vpuORfj7deoebnD9pbWTijUPcpXtuz/t7fYqbL+oaJ6Y=
=mHRi
-----END PGP SIGNATURE-----
