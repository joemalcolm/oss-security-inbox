X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1717" "Thursday" "5" "October" "2017" "08:54:30" "+0000" "Andrey Bazhenov" "support@gridgain.freshdesk.com" "<59d5f345e210c_118b4443c08122012047.email-sidekiq-4@outbound-email.freshdesk.com>" "51" "[oss-security] [CVE-2017-14614] GridGain Visor GUI Console - File System Path Traversal" nil nil nil "10" "2017100508:54:30" "[oss-security] [CVE-2017-14614] GridGain Visor GUI Console - File System Path Traversal" (number mark "U       support@grid Oct  5   51/1717  " thread-indent "\"[oss-security] [CVE-2017-14614] GridGain Visor GUI Console - File System Path Traversal\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26144 invoked by uid 550); 5 Oct 2017 09:41:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18237 invoked from network); 5 Oct 2017 08:54:42 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=freshdesk.com; 
	h=from:reply-to:to:subject:mime-version:content-type:content-transfer-encoding; 
	s=s1; bh=d3HvC40RG2aIpgDW08MgTQW8W4s=; b=Lejie5r5FEef/i/tDOTXmD1
	spZZDj0eS4MDleCLotBTi0LWzV/eQ0N5gn7IxXviClavJyAU+vrM4gbCM/YTlMaO
	S2+I7HO2cuS+fDy9Ve4m6az3jbvOjC5qnMeWIr/uObMOt39kCarmUMdlNW7mdzxN
	DZ5rc5jkoPMBfuymFq7k=
Date: Thu, 05 Oct 2017 08:54:30 +0000 (UTC)
From: Andrey Bazhenov <support@gridgain.freshdesk.com>
To: oss-security@lists.openwall.com
Message-ID: <59d5f345e210c_118b4443c08122012047.email-sidekiq-4@outbound-email.freshdesk.com>
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="--==_mimepart_59d5f345e6c8d_118b4443c08122012198";
 charset=UTF-8
Content-Transfer-Encoding: 7bit
sent-on: 2017-10-05 08:54:29 +0000
X-FD-Email-Category: 
X-SG-EID: wn1rdHGkFSrvtgEuvlLCbaw00eMQ9PrR5jaavt6mz6SKSVLxT5CbCA/26RN4EX6KL6NKC6FahUAqOq
 aOh+ZN3Vlkz3v4MzsLtdNK7uaUsycgo7n263zSf9ArcGBh/trWxn7gN7AwrnyeOXyiw4k4PQ9Q+EjM
 EN3vI12G7WmzMoWJQ21o85+5vlLZLsmPNOJOLgXnX4GEMuHvBkG8zAAThKQvr6SSYBHQd1Fin8ljuS
 61KIlUb9WGOVnaoi+vShmp
X-SG-ID: dXNuuxiaeVPHPf1dZH02eKYVq1iMeSsftZP6JowhJximRctFb9oPCvrDJ7dHYLU/yVO8HexKYl8O7P
 9gar7fdA9EryOpZAgKNu4R56cTcGtwdIn9tmFis4ZY3ZWwZ/+6VD5VDb4rOaoDt1UTZ6q0m74k/0iA
 fWz1R/pytQmLdAgr+121CWJs4uHGpdcZZGG8zxHATKjGW/xT6qfS6kvUh5JgB/pM9vLf8xnR4qkLnT
 j8/5U7VSNwljLIakQ9gcmECDLg3GM4T/5exYFtMp6x3g==
Subject: [oss-security] [CVE-2017-14614] GridGain Visor GUI Console - File System Path
 Traversal

----==_mimepart_59d5f345e6c8d_118b4443c08122012198
Content-Type: text/plain;
 charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Severity: Important=20
=20=20=20
 Vendor: GridGain Systems=20
=20=20=20
 Versions Affected:=20
=20=20=20
 * GridGain 8.1.4 and earlier=20
 * GridGain 1.9.6 and earlier=20
 * GridGain 1.8.11 and earlier=20
 * GridGain 1.7.15 and earlier=20
=20=20=20
 Impact:=20
   The vulnerability impacts GridGain Visor GUI Management Console users. V=
isor allows open log files of remote cluster nodes and observe them locally=
. To get the logs a user needs to provide a path to the files. Visor does n=
ot sanitize the path provided that might result in an unauthorized access t=
o sensitive files.=20
=20=20=20
 Description:=20
   Visor GUI Console uses a user-supplied input to construct a pathname to =
a remote directory with log files. The application does not sanitize this p=
ath and malicious application users can get an access to restricted or sens=
itive files stored on a server=E2=80=99s file system.=20
=20=20=20
 Mitigation:=20
=20=20=20
 Start cluster nodes under a system user that has restricted access to the =
file system.=20
 In addition, to make the cluster more secure consider using GridGain=E2=80=
=99s Security module setting up basic authentication and authorization para=
meters.=C2=A0=20
=20=20=20
 Upgrade to the versions below to enable the path sanitization by default:=
=20
 * GridGain 8.1.5 or later=20
 * GridGain 1.9.7 or later=20
 * GridGain 1.8.12 or later=20
 * GridGain 1.7.16 or later=20
=20=20=20
 References:=20
=20=20=20
 * http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-14614



----==_mimepart_59d5f345e6c8d_118b4443c08122012198--
