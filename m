X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1838" "Wednesday" "16" "August" "2017" "10:50:33" "+0200" "Florian Weimer" "fweimer@redhat.com" "<d3e0c378-10ac-4ac9-0b60-b5993308a058@redhat.com>" "44" "[oss-security] Insecure DNS dependency in many Kerberos deployments" "^Date:" nil nil "8" "2017081608:50:33" "[oss-security] Insecure DNS dependency in many Kerberos deployments" (number mark "        fweimer@redh Aug 16   44/1838  " thread-indent "\"[oss-security] Insecure DNS dependency in many Kerberos deployments\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15518 invoked by uid 550); 16 Aug 2017 08:50:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15485 invoked from network); 16 Aug 2017 08:50:47 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com AE73A6410D
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=fweimer@redhat.com
Message-ID: <d3e0c378-10ac-4ac9-0b60-b5993308a058@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Wed, 16 Aug 2017 08:50:36 +0000 (UTC)
Date: Wed, 16 Aug 2017 10:50:33 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Insecure DNS dependency in many Kerberos deployments
To: oss-security@lists.openwall.com

By default, Kerberos clients perform host name canonicalization (search
path resolution, CNAME chain chasing and PTR lookups) to obtain a
service principal name.  This allows service impersonification:

  https://ssimo.org/blog/id_015.html

As a rule of thumb, the impact is similar to running TLS with CA-based
certificate validation, but without host name checks (but perhaps
slightly less because the trust domains could be much smaller).

The Kerberos client library enables this canonicalization by default:

       dns_canonicalize_hostname
              Indicate  whether  name lookups will
              be used  to  canonicalize  hostnames
              for  use in service principal names.
              Setting  this  flag  to  false   can
              improve    security    by   reducing
              reliance  on  DNS,  but  means  that
              short  hostnames will not be canoni‐
              calized  to  fully-qualified   host‐
              names.  The default value is true.

       rdns   If this flag is true,  reverse  name
              lookup  will  be used in addition to
              forward name lookup to  canonicaliz‐
              ing  hostnames  for  use  in service
              principal names.  If  dns_canonical‐
              ize_hostname  is  set to false, this
              flag has  no  effect.   The  default
              value is true.

Some deployments have implemented compatibility with
dns_canonicalize_hostname = false by moving the canonicalization to the
application instead, which is of course equally insecure:

  https://pagure.io/koji/c/fc8a8c6582c5e3b7a8a3a4b887061ba7a3f150a1
  https://bugzilla.redhat.com/show_bug.cgi?id=1481983

Kerberos upstream does not want to enable secure behavior by default
because of backwards compatibility concerns.

Thanks,
Florian
