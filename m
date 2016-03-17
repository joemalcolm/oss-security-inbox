X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2994" "Thursday" "17" "March" "2016" "11:23:01" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160317152301.48ABE6C0675@smtpvmsrv1.mitre.org>" "67" "[oss-security] Re: CVE requests for Drupal contributed modules (from 2016-009 to 2016-014)" "^Cc:" nil nil "3" "2016031715:23:01" "[oss-security] Re: CVE requests for Drupal contributed modules (from 2016-009 to 2016-014)" (number mark "        cve-assign@m Mar 17   67/2994  " thread-indent "\"[oss-security] Re: CVE requests for Drupal contributed modules (from 2016-009 to 2016-014)\"\n") "<CAMYtjArgn4pT2z2gVpwvQh7L40d11Q-A47fJtPboi27b+4BX-A@mail.gmail.com>" ("<CAMYtjArgn4pT2z2gVpwvQh7L40d11Q-A47fJtPboi27b+4BX-A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22245 invoked by uid 550); 17 Mar 2016 15:23:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22216 invoked from network); 17 Mar 2016 15:23:13 -0000
In-Reply-To: <CAMYtjArgn4pT2z2gVpwvQh7L40d11Q-A47fJtPboi27b+4BX-A@mail.gmail.com>
Message-Id: <20160317152301.48ABE6C0675@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@drupal.org
Date: Thu, 17 Mar 2016 11:23:01 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE requests for Drupal contributed modules (from 2016-009 to 2016-014)
To: pere@orga.cat

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Prepopulate - Access Bypass - SA-CONTRIB-2016-009
> https://www.drupal.org/node/2679503

>> The Prepopulate module does not adequately prevent a user from
>> overwriting arbitrary parts of $_REQUEST. It also does not prevent
>> pre-populating certain fields that are not displayed or manipulating
>> markup fields to alter elements of the user interface.

>> Versions affected

>>    Prepopulate 7.x-2.x versions prior to 7.x-2.1.

>>> http://cgit.drupalcode.org/prepopulate/commit/prepopulate.module?id=16cdb63cc3b256dd785e029ec17f92ddf80cc443

Use CVE-2016-3187 for the issue associated with deleting the
"parse_str(base64_decode($_REQUEST['pp']), $_REQUEST);" lines, and use
CVE-2016-3188 for the issue associated with changing the value of
$limited_types. (The 16cdb63cc3b256dd785e029ec17f92ddf80cc443 commit
message does not seem closely related to the
16cdb63cc3b256dd785e029ec17f92ddf80cc443 code changes.)

Our understanding is that the Prepopulate module was packaged in, for
example, Fedora 23. The prepopulate-6.x-2.2.tar.gz file shipped in
drupal6-prepopulate-2.2-4.fc23.src.rpm apparently does not have the
16cdb63cc3b256dd785e029ec17f92ddf80cc443 changes. Thus, we feel that
the best available information is that CVE-2016-3187 and CVE-2016-3188
affects or affected, at least, Fedora 23.

(For example, see the
http://fedora.mirror.lstn.net/releases/23/Everything/source/SRPMS/d/drupal6-prepopulate-2.2-4.fc23.src.rpm
package file.)

(We understand that Drupal 6 end-of-life was last month according to
the https://www.drupal.org/drupal-6-eol post. We also understand that
http://pkgs.fedoraproject.org/cgit/rpms/drupal6-prepopulate.git/commit?id=d77963c300289b6be29b5dc08d0662fc698068f4
exists. However, drupal6-prepopulate-2.2-4.fc23 may still be in use on
many Fedora 23 systems.)

We may be sending a separate reply about the USASearch, Google
Analytics Counter, Hubspot CTA, Node Notify, and Fieldable Panels
Panes issues.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW6srrAAoJEL54rhJi8gl5J/4P/0g7s1pjL7lsg4sc3vN41r6v
+1i0ucO28tfGhM13QxqNfR1RqUZ3W40dlWz2Lum6NvudbkGZaY+Jzph4BT9RW1n2
80ruiuamYF3escBnWvssSdIjwl2ibwsKFzzjyrvArdcZpnI6pwGFWPKLbN4pGyoz
WSi+Ow067aqeSJVonW98AlxF4udVTrQJQi1wmhiW0jOE+7zk1rAwkVUgLlWCDJLB
dVnopSr/FN2ewTkkJrAfBSfqQBGe7XNrnYCzefdBv7JgAARzkPc1jJzdC8oy3AIL
TiyDVo6O/fi4j4pd01TVUc8Yh7kGilDdk7BPyptH4KPrGG8yS8SmLY2WSoR3gpa8
iBvw6o9X0HuXFo9IGrSBsd6LUt/+dYkqOH4JN2dxj9rxKlqv+4zlGHqM8mP/xGaw
4tCy7ekDTpEEQNSSzZDLtrDtaYbtHztC2EQ+fUp8iTmh1OKayWPGHNj/+unChR+q
0QqQt483QarClETgwUtVQCwqUBT90nS0RFvG5FKCAGRurfWXR0b0jXtQPmECZj6k
wlJinmq4yAPfHVEjm1/5pGANAcihuLUxVdvpw8ZbsAJRSg2wEvxSCILb4Av+OaxF
o5q0Nlekcn3FxKNz4hpr+ra5CWy7i/KDhjAuH6rarNMWA2sDLOM18TjyL9Pax0xy
etw4zEaMsg3o2WgpI6qS
=huG5
-----END PGP SIGNATURE-----
