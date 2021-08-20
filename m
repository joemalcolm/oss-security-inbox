X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3545" "Friday" "20" "August" "2021" "13:24:07" "-0800" "Michael McNally" "mcnally@isc.org" nil "94" "[oss-security] August BIND maintenance releases contain a defect affecting servers using the map zone file format (was: A vulnerability in BIND (CVE-2021-25218) will be announced 18 August 2021)" nil nil nil "8" nil nil (number mark "U       mcnally@isc. Aug 20   94/3545  " thread-indent "\"[oss-security] August BIND maintenance releases contain a defect affecting servers using the map zone file format (was: A vulnerability in BIND (CVE-2021-25218) will be announced 18 August 2021)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] August BIND maintenance releases contain a defect affecting servers using the map zone file format (was: A vulnerability in BIND (CVE-2021-25218) will be announced 18 August 2021)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14010 invoked by uid 550); 20 Aug 2021 21:24:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13977 invoked from network); 20 Aug 2021 21:24:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1629494649; bh=hZUkfHd0ChiVHN145UbJ+n/lwd6dl7x1mrT/H8ewHPA=;
	h=References:To:From:Cc:Subject:Date:In-Reply-To;
	b=OyEGLAwRpKDD82v1tuAKvch0xQnxFeGD8Fd40Hec5wSBH4fvEPs+M4q+PvKcK+ukd
	 TQsbDpw6sh5ubCctpA9QY/v7fsn+q+5hVe2unXjVDO2ikAzyZ4BVeZPzCd85e6DdKB
	 2RoYi/BWa/dfTvx83xgaQ+NreMninmNpzd7VhmRo=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbrang.isc.org A0C7FAA5F06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1629494648;
	bh=Kix4C7WLM2bhjgrknEaYovp8gZ07oZNXw9caeqXMqTk=;
	h=To:From:Message-ID:Date:MIME-Version;
	b=h+PECuWZnZruqUuRoqDCHvRXCrQYjq+xMRoYvfvRIsmJZpRs8VN8nKajzt8rjgm+u
	 wJ3d5ZkD8xBfqiR7nwXjzeBEcJky77du+iZ+bjEQzDjl0CupMPTqxByUX82yg3S+xn
	 5/KUGOsCuQg5cj7AcbbWIb4QwRaHb7idAfa7OcMU=
References: <c84cbf8d-393f-5209-d642-8b8915150ac1@isc.org>
To: oss-security@lists.openwall.com
From: Michael McNally <mcnally@isc.org>
Cc: "security-officer@isc.org" <security-officer@isc.org>
X-Forwarded-Message-Id: <c84cbf8d-393f-5209-d642-8b8915150ac1@isc.org>
Message-ID: <608e7f5a-3e5f-b904-7032-213040a49f2a@isc.org>
Date: Fri, 20 Aug 2021 13:24:07 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <c84cbf8d-393f-5209-d642-8b8915150ac1@isc.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] August BIND maintenance releases contain a defect affecting servers
 using the map zone file format (was: A vulnerability in BIND (CVE-2021-25218)
 will be announced 18 August 2021)

Hello oss-security subscribers --

Earlier in the week we (Internet Systems Consortium) posted information to =
this list
about new versions of our BIND software which contained a fix for an exploi=
table
denial-of-service vector, CVE-2021-25218.

The replacement versions contained other fixes, one of which has caused a n=
ew
problem of which we would like to make you aware.  It is not an exploitable=
 security
vulnerability but we would like to make sure that packagers who prepared re=
placement
versions of BIND after receiving our previous message are aware of this add=
itional
issue, as it will affect users who use a specific BIND feature.

Originally the message below was sent to the distros list; I am informed th=
at this
list was a more appropriate destination for it.

Apologies for our confusion over which list to use, as well as the addition=
al work
caused by the new defect, but if you package and redistribute BIND please t=
ake note
of the Operational Notification linked from the message quoted below.

Thank you,

Michael McNally
ISC Security Officer


-------- Forwarded Message --------
Subject: [vs] August BIND maintenance releases contain a defect affecting s=
ervers using=20
the map zone file format (was: A vulnerability in BIND (CVE-2021-25218) wil=
l be announced=20
18 August 2021)
Date: Fri, 20 Aug 2021 02:37:19 -0800
From: ISC Security Officer <security-officer@isc.org>
To: Michael McNally <mcnally@isc.org>, distros@vs.openwall.org

To the packagers and redistributors of BIND 9:

We recently contacted this list with information about CVE-2021-25218,
a vulnerability affecting the 9.16.x and 9.17.x branches of BIND,
and provided new versions of the software containing a fix for that
vulnerability.

Unfortunately an issue has been discovered in the releases which
corrected that CVE bug.  The new defect is not a remotely exploitable
attack vector, and so is arguably off-topic for this list, but as we
had previously advised packagers to update their packages based on
the new versions we wanted to inform you about a problem discovered in
those versions.

The new defect arises from a failure to properly increment the API
version of the file format for zones stored in BIND's "map" format.
As a consequence of this oversight, affected servers can terminate
with an assertion failure when trying to read zone data stored in a
file written by a previous version of the software.

More complete details are available in this Operational Notification
in the ISC Knowledge Base:

    https://kb.isc.org/docs/map-zone-format-incompatibility-in-bind-9-16-20=
-and-9-17-17

For the benefit of packagers we have prepared patch diffs which
increment the API version of the map format.  BIND packages built
from patched source will detect that files written in obsolete
versions of the map file format are incompatible, will log a
message and move the file to an archive version, and will retransfer
the zone from its source on a primary server, which is the normally
expected behavior when the map zone file format changes.

Patches are available in the patches subdirectories of the recent
releases, i.e.:

9.16.20: https://downloads.isc.org/isc/bind9/9.16.20/patches
9.17.17: https://downloads.isc.org/isc/bind9/9.17.17/patches

We're sorry for the error and for the extra work created for those
repackaging our software.

If you have further questions about this after reading the Operational
Notification, please direct them to security-officer@isc.org

Thank you,

Michael McNally
ISC Security Officer
