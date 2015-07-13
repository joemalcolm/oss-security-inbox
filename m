X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3319" "Monday" "13" "July" "2015" "10:39:20" "+1000" "Marina Glancy" "marina@moodle.com" "<CAB_jSYzeDXmorPQ8h+eb1j3vxUuJTEJvk--OAGi6ywY+i6eV+w@mail.gmail.com>" "78" "[oss-security] moodle security announcements" nil nil nil "7" "2015071300:39:20" "[oss-security] moodle security announcements" (number mark "        marina@moodl Jul 13   78/3319  " thread-indent "\"[oss-security] moodle security announcements\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29887 invoked by uid 550); 13 Jul 2015 00:39:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29841 invoked from network); 13 Jul 2015 00:39:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=moodle.com; s=google;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=0pJBJOKnohzGiOKPTehyMTzwhZnDKE9vfSraErjE/Fg=;
        b=B1EJl77uYfPnfrHISb3AWNtAVVJwIotNYmtONB0x+FF4Quaz7o5ZkWcxzxgIT4trHA
         x8idBz3IPisvU5EcTJc5NWxIL0cgh7pgYyZecATJGInYeTki6f1kpdoTH2pCu5vGLZS/
         kmoQUZuUAG78rKtvU/ewxg54cSFitHtrGzgtQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=0pJBJOKnohzGiOKPTehyMTzwhZnDKE9vfSraErjE/Fg=;
        b=ORJUwlyQ3trLjpFtwgIK9+tB60VWplq7oVNUB/YrbAe9zIC8qs7EbdJ1hAA0bFLIWd
         WLw1xk36XVLS4gd/N5a9EGKNkJxcfqdas4k0uUax5/I5lt7NyuEF6vTRJrlKQE9I2gPv
         8WZ6/F1e8ZmMYbT8lTj4wRmn47J6spoyzvIvWWAneLUluwpNOIMpXudJPFabFfDSQnur
         29G4Q0rjDx+cA+ouIFOIHbxr4mAAk9bTE6ZMpmn7vX6rdv6AyNQIdM6K5etcTcPVxdUn
         ut1AvUBJGz0fS7cmD+yp5DoAdWSni2Qjkoe8HPrIwjMc9ytaBfIV1poDsCE5xvDjqWmg
         +RJg==
X-Gm-Message-State: ALoCoQn8MYumfftuxJRKU0fQAuhqfcV4Oqza2jP84r36eiubc1ORrEf7yTeJps/t9fjvPgTj8ach
MIME-Version: 1.0
X-Received: by 10.112.210.137 with SMTP id mu9mr29011268lbc.95.1436747960762;
 Sun, 12 Jul 2015 17:39:20 -0700 (PDT)
Message-ID: <CAB_jSYzeDXmorPQ8h+eb1j3vxUuJTEJvk--OAGi6ywY+i6eV+w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 13 Jul 2015 10:39:20 +1000
From: Marina Glancy <marina@moodle.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] moodle security announcements
To: oss-security@lists.openwall.com

The following security notifications have now been made public. Thanks
to OSS members for their cooperation.

Marina Glancy
Development Process Manager
marina@moodle.com
+61894674167 | moodle.com
The world's open source learning platform

==============================================================================
MSA-15-0026: Possible phishing when redirecting to external site using referer
header

Description:       Another case when redirecting to external site was possible
                   in error messages. See also MSA-15-0019 (CVE-2015-3175)
Issue summary:     PARAM_LOCALURL is vulnerable to open redirects
Severity/Risk:     Minor
Versions affected: 2.9, 2.8 to 2.8.6, 2.7 to 2.7.8 and earlier unsupported
                   versions
Versions fixed:    2.9.1, 2.8.7 and 2.7.9
Reported by:       Totara
Issue no.:         MDL-50688
CVE identifier:    CVE-2015-3272
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-50688

==============================================================================
MSA-15-0027: Capability 'mod/forum:canposttomygroups' is not respected when
using 'Post a copy to all groups' in forum

Description:       Capability 'mod/forum:canposttomygroups' was not respected
                   when using 'Post a copy to all groups' in forum. Capability
                   to post to each individual group was always required.
Issue summary:     canposttomygroups capability is not checked in
                   mod/forum/post.php
Severity/Risk:     Minor
Versions affected: 2.9
Versions fixed:    2.9.1
Reported by:       Juan Leyva
Issue no.:         MDL-50220
CVE identifier:    CVE-2015-3273
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-50220

==============================================================================
MSA-15-0028: Possible XSS through custom text profile fields in Web Services

Description:       Several web services returning user information did not
                   clean text in text custom profile fields
Issue summary:     Custom profile fields (textarea) are not passed through
                   external_format_text when returned by several web services
Severity/Risk:     Minor
Versions affected: 2.9, 2.8 to 2.8.6, 2.7 to 2.7.8 and earlier unsupported
                   versions
Versions fixed:    2.9.1, 2.8.7 and 2.7.9
Reported by:       Marina Glancy
Issue no.:         MDL-50130
CVE identifier:    CVE-2015-3274
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-50130

==============================================================================
MSA-15-0029: Javascript injection in SCORM module

Description:       Penetration test discovered possible Javascript injection
                   in SCORM module
Issue summary:     Inadequate JavaScript Handling in SCORM
Severity/Risk:     Minor
Versions affected: 2.9, 2.8 to 2.8.6, 2.7 to 2.7.8 and earlier unsupported
                   versions
Versions fixed:    2.9.1, 2.8.7 and 2.7.9
Reported by:       Martin Greenaway
Issue no.:         MDL-50614
CVE identifier:    CVE-2015-3275
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-50614

==============================================================================
