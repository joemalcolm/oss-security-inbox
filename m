X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5553" "Friday" "18" "February" "2022" "13:26:29" "+0100" "Paolo Perego" "pperego@suse.de" nil "149" "[oss-security] Multiple vulnerabilities affecting cobbler" nil nil nil "2" nil nil (number mark "U       pperego@suse Feb 18  149/5553  " thread-indent "\"[oss-security] Multiple vulnerabilities affecting cobbler\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities affecting cobbler" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21851 invoked by uid 550); 18 Feb 2022 13:39:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27966 invoked from network); 18 Feb 2022 12:26:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1645187189; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=AJAtmmJXkpDeZURNauTM7saEe2XOaWstJWeLx3DeEdg=;
	b=zvHwLZ7LlCAm/c2v1suiBn2SsNF0azc6g0XAu2ldat6OZexwdbJ69ds4IZBIbJqDj8tuIP
	zKoD954og4KwRdJev+nnplPCnIj5r/KrlDKW0d/wCcJ1C5HrJknulWRnJxBejDu6DEfDxt
	vGlnvEU4lG/vS5XlvHgChSGIIyHy//U=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1645187189;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=AJAtmmJXkpDeZURNauTM7saEe2XOaWstJWeLx3DeEdg=;
	b=Ku4iKOpgiCQWfKabMfTKsBu7h++GQr+UaBVUTTt/ierSwXB3edMazsEGGuyUcj5fCIA/iD
	/L56GsCK62IGT9BQ==
Message-ID: <fc7948ee-fe90-e69c-4f18-78e5b02c9682@suse.de>
Date: Fri, 18 Feb 2022 13:26:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Content-Language: en-US
From: Paolo Perego <pperego@suse.de>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Multiple vulnerabilities affecting cobbler

Hello list,

Last October 2021, I started a review on a subset of the Cobbler
ecosystem  ([1], [2] and [3]) using the master branch at the time the
request was made [4].

During the audit several issues were found and three of them, have been
assigned with a CVE identifier.

1) CVE-2021-45083 - unsafe permissions on sensitive files in /etc/cobbler

It has been found that files in /etc/cobbler are world readable and two
of those files contain sensitive information that can be used by an
attacker to open an authenticated session with cobbler daemon:

     * users.digest file contains sha2-512 digests of users in cobbler
	local installation. In the case of an easy-to-guess password,
	it's trivial to obtain the plaintext string.
     -rw-r--r-- 1 root root 145 Oct 11 09:15 users.digest

     * settings.yaml file contains secrets like hashed default password
	and more.
     -rw-r--r-- 1 root root 5051 Dec 13 12:42 /etc/cobbler/settings.yaml

Assigned CVSS 8.4 (CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:N)

This vulnerability affects also koan [5] and products built using
cobbler like SUSE Manager 4.1 and 4.2.
SUSE Manager 4.3 is not affected by this issue.

The issue affects cobbler version 3.3.1 and previous. Version 3.X.X is safe.

Upstream was fixed by this commit:
https://github.com/cobbler/cobbler/commit/34e3417bcbb72d28c3c1c3332af85793ba077f75

Please note that a possible workaround is trivial. As root you have to
setup the configuration files, to make them readable only by root.

---%<---%<---%<---%<---%<---%<---%<---%<---%<
# chmod go-r /etc/cobbler/users.digest
# chmod go-r /etc/cobbler/settings.yaml
---%<---%<---%<---%<---%<---%<---%<---%<---%<

2) CVE-2021-45082 - incomplete template sanitization

In templar.py file, function check_for_invalid_imports, ensures that
Cheetah code is not importing Python modules. However, the control is
very basic and it fires up when line begins with #import:

     lines = data.split("\n")
     for line in lines:
         if line.find("#import") != -1:
             rest = line.replace("#import", "").replace(" ", "").strip()
             if self.settings and rest not in
			self.settings.cheetah_import_whitelist:
                 raise CX("potentially insecure import in template: %s" %
			rest)

However, according to Cheetah documentation [6], it is possible to 
include python code using this syntax:

#from MODULE import MODULE_OR_OBJECT [as NAME] [, ...]

Having a rogue module using #from can bypass import sanitization
declared so far.

Assigned CVSS 7.0 (CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:H)

This vulnerability affects also products built using cobbler like SUSE
Manager 4.1, 4.2 and 4.3. Koan is not affected by this issue.

Upstream was fixed by this commit:
https://github.com/cobbler/cobbler/commit/c9a094541d81ce6d753f03888d763ff28b9ada72

3) CVE-2021-45081: unsafe protocol usage

A lot of cobbler server entry-points are served on HTTP rather then HTTPS.

Assigned CVSS 6.8 (CVSS:3.1/AV:A/AC:L/PR:L/UI:N/S:C/C:H/I:N/A:N)

This vulnerability affects also products built using cobbler like koan
and SUSE Manager 4.1, 4.2 and 4.3.

At the time of disclosing this, there is no a fix available. Using HTTPS
everywhere requires a deep knowledge of how customers implements cobbler 
in their network and how do they manage certificates.

Accordingly with the maintainer we will keep attention on this in order 
to create a certificate enrolling and trusting layer in the python code 
for the future.

CVSS 6.8 (CVSS:3.1/AV:A/AC:L/PR:L/UI:N/S:C/C:H/I:N/A:N)

With the author, we agreed that fixing this will take longer, since it
involves
several architectural decision on certifciate enrollment and trust.

4) Hardcoded password for testing

When in /etc/cobbler/modules.conf, in the [authentication] part the
module is “testing”, the credential “testing:testing” is used to 
authenticate users.

This is a known and well documented issues.
However the upstream maintainer agreed, that this functionality is no
longer needed and it can safely removed.

5) Log file pollution

In modules/installation/pre_log.py and modules/installation/post_log.py, 
some user controlled input strings are appended in 
/var/log/cobbler/install.log log file without sanitization.

This can lead to a log pollution attack, where users inject rogue log
statements making hard troubleshooting by sysadmins.

6) Timeline

2021-12-10: vulnerabilities were reported to upstream author
2021-12-16: upstream author acknowledge them and start working on fixes
2021-12-16: received CVEs from Mitre. Offered author an embargo until
             2022-02-16
2022-02-16: we agreed with the author two more embargo day to prepare
	    all fixed packages
2022-02-18: fixes reached upstream repository and findings were public

7) Links

[1] https://github.com/cobbler/cobblerclient
[2] https://github.com/cobbler/cli
[3] https://github.com/cobbler/cobbler
[4] https://bugzilla.suse.com/show_bug.cgi?id=1191952
[5] https://github.com/cobbler/koan
[6] https://cheetahtemplate.org/users_guide/inheritanceEtc.html
[7] https://bugzilla.suse.com/show_bug.cgi?id=1193671
[8] https://bugzilla.suse.com/show_bug.cgi?id=1193678
[9] https://bugzilla.suse.com/show_bug.cgi?id=1193683

Cheers
Paolo
-- 
(*_	Paolo Perego				@thesp0nge
//\	Software security engineer		suse.com
V_/_	0A1A 2003 9AE0 B09C 51A4 7ACD FC0D CEA6 0806 294B

-- 
(*_  Paolo Perego                           @thesp0nge
//\  Software security engineer               suse.com
V_/_ 0A1A 2003 9AE0 B09C 51A4 7ACD FC0D CEA6 0806 294B
