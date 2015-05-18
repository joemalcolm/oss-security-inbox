X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7275" "Monday" "18" "May" "2015" "09:11:24" "+0800" "Marina Glancy" "marina@moodle.com" "<CAB_jSYxpK+=zmo2ZdLN0J6aHiy43bjX_8fvPFE3ViGYmB4TG0g@mail.gmail.com>" "162" "[oss-security] Moodle security advisories [vs]" nil nil nil "5" "2015051801:11:24" "[oss-security] Moodle security advisories [vs]" (number mark "        marina@moodl May 18  162/7275  " thread-indent "\"[oss-security] Moodle security advisories [vs]\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6140 invoked by uid 550); 18 May 2015 01:11:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6105 invoked from network); 18 May 2015 01:11:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=moodle.com; s=google;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=FqPgaWmVUsq69wZpOeRKbE3sQJMZsF3y8o5AqrKDE5M=;
        b=jHVHdIVz4ZWgrHJqbtaW25Db5xouqzO4cLq6FmVeR+L1XErBnFBlvkIZD1Tb0PWkE5
         /ukDLB/G+xvQta3vN+QLUXyCVwyoPxO179csTWpceUd739Vk0Pb+qVIoTxQhHJaHTpqQ
         Lv5XvSUruIgx7dN1rUsw14LVR72bblqGb140A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=FqPgaWmVUsq69wZpOeRKbE3sQJMZsF3y8o5AqrKDE5M=;
        b=DoOX1pYVuqA09z9tbzqHbo03mLXOL5CUagbdUNmnlPyNwHISja4VqmumkyUvje3Kjv
         xU/Bwd8CA9adAFivVjRWuZdF768lxiXcfmz39HXWFhld8LVRwIVl2T3Iczf2Hp11jqd/
         XL1qlmKV6UmaQBDsHt2NBRcfftxAiXWR9xLlm1/B5klcUxduMBq0ZiyR4ssOjg16uLmY
         Ml+bmWthD+KMVjwLgS/DIGRvgWhhIiol6/9X7A+H0yCVBTvyLV8TpJKAqYvJPrvthmmr
         j0XxFGLUhRa0cinnGH6zHHSlCvcYsX+2BKturZWOWtaUBf5YJn7QFWxPHEgKkDX7MyUN
         m56Q==
X-Gm-Message-State: ALoCoQnBIX8bRy5hYzcEXZ1L4THYeqnWkdoYRPKW/MbjvDNKZeQCB6SU5DLm1F/x1jQI5SnbRFJu
MIME-Version: 1.0
X-Received: by 10.112.161.226 with SMTP id xv2mr15756263lbb.106.1431911484651;
 Sun, 17 May 2015 18:11:24 -0700 (PDT)
Message-ID: <CAB_jSYxpK+=zmo2ZdLN0J6aHiy43bjX_8fvPFE3ViGYmB4TG0g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 18 May 2015 09:11:24 +0800
From: Marina Glancy <marina@moodle.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Moodle security advisories [vs]
To: oss-security@lists.openwall.com

Hello,

The following security notifications have now been made public. Thanks
to OSS members for their cooperation.

Marina Glancy
Development Process Manager
marina@moodle.com
+61894674167 | moodle.com
The world's open source learning platform


==============================================================================
MSA-15-0018: Quiz manual-grading is an XSS risk, but does not declare that

Description:       Leaving gradebook feedback is a trusted action and such
                   capabilities in other modules already have XSS mask,
                   'mod/quiz:grade' was missing this flag.
Issue summary:     Quiz manual-grading is an XSS risk, but does not declare
                   that
Severity/Risk:     Minor
Versions affected: 2.8 to 2.8.5, 2.7 to 2.7.7, 2.6 to 2.6.10 and earlier
                   unsupported versions
Versions fixed:    2.9, 2.8.6, 2.7.8 and 2.6.11
Reported by:       Hugh Davenport
Issue no.:         MDL-49941
CVE identifier:    CVE-2015-3174
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-49941

==============================================================================
MSA-15-0019: Possible phishing when redirecting to external site using referer
header

Description:       Some error messages in Moodle display button to return to
                   previous page. Redirecting to non-local referer should not
                   be allowed as it can potentially be used for phising.
Issue summary:     get_referer() used with redirect() can be insecure
Severity/Risk:     Minor
Versions affected: 2.8 to 2.8.5, 2.7 to 2.7.7, 2.6 to 2.6.10 and earlier
                   unsupported versions
Versions fixed:    2.9, 2.8.6, 2.7.8 and 2.6.11
Reported by:       Dingjie Yang
Issue no.:         MDL-49179
CVE identifier:    CVE-2015-3175
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-49179

==============================================================================
MSA-15-0020: User fullname disclosure through account confirmation link

Description:       On the sites with enabled self-registration not registered
                   users can retrieve fullname of registered users knowing
                   their usernames
Issue summary:     User fullname disclosure through account confirmation link
Severity/Risk:     Serious
Versions affected: 2.8 to 2.8.5, 2.7 to 2.7.7, 2.6 to 2.6.10 and earlier
                   unsupported versions
Versions fixed:    2.9, 2.8.6, 2.7.8 and 2.6.11
Reported by:       Federico Kirschbaum
Issue no.:         MDL-50099
Workaround:        Even partial patch (removing one line in
                   /login/confirm.php) will also resolve security issue
CVE identifier:    CVE-2015-3176
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-50099

==============================================================================
MSA-15-0021: Any authenticated user can subscribe to site-wide event monitor
rules

Description:       If the site-wide rules exist in the event monitor tool, any
                   user can subscribe themselves to them and potentially
                   access information they are not supposed to see.
Issue summary:     Any authenticated user can subscribe to site wide event
                   monitor rules
Severity/Risk:     Minor
Versions affected: 2.8 to 2.8.5
Versions fixed:    2.9 and 2.8.6
Reported by:       Adrian Greeve
Issue no.:         MDL-50039
Workaround:        Do not use site-wide rules until your site is upgraded
CVE identifier:    CVE-2015-3177
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-50039

==============================================================================
MSA-15-0022: Potential XSS risk when returning text entered by student from
Web Services

Description:       If user who is not XSS-trusted attempts to insert the XSS
                   as part of the input text, it will be cleaned when
                   displayed on Moodle website but may be displayed uncleaned
                   in the external application
Issue summary:     external_format_text() cleans and formats text incorrectly
Severity/Risk:     Serious
Versions affected: 2.8 to 2.8.5, 2.7 to 2.7.7, 2.6 to 2.6.10 and earlier
                   unsupported versions
Versions fixed:    2.9, 2.8.6, 2.7.8 and 2.6.11
Reported by:       Eloy Lafuente
Issue no.:         MDL-49718
CVE identifier:    CVE-2015-3178
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-49718

==============================================================================
MSA-15-0023: Suspended user is able to login when confirming email

Description:       When self-registration is enabled and user's account was
                   suspended after creating account but before actually
                   confirming it, user is still able to login when confirming
                   email but only once.
Issue summary:     Suspended user is able to login when confirming email
Severity/Risk:     Minor
Versions affected: 2.8 to 2.8.5, 2.7 to 2.7.7, 2.6 to 2.6.10 and earlier
                   unsupported versions
Versions fixed:    2.9, 2.8.6, 2.7.8 and 2.6.11
Reported by:       Marina Glancy
Issue no.:         MDL-50090
CVE identifier:    CVE-2015-3179
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-50090

==============================================================================
MSA-15-0024: User with suspended enrolment can see sections in the navigation
tree

Description:       If a user is enrolled in the course but his enrollment is
                   suspended, they can not access the course but still were
                   able to see course structure in the navigation block
Issue summary:     User with suspended enrolment can see sections in the
                   navigation tree
Severity/Risk:     Minor
Versions affected: 2.8 to 2.8.5, 2.7 to 2.7.7, 2.6 to 2.6.10 and earlier
                   unsupported versions
Versions fixed:    2.9, 2.8.6, 2.7.8 and 2.6.11
Reported by:       Alex Mitin
Issue no.:         MDL-49788
CVE identifier:    CVE-2015-3180
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-49788

==============================================================================
MSA-15-0025:       Capability to manage own files is not respected in Web
Services

Description:       Users with the revoked capability
                   'moodle/user:manageownfiles' are still able to upload
                   private files using deprecated function in Web Services
Issue summary:     Users with the manageownfiles disabled are able to upload
                   private files via Web Services
Severity/Risk:     Minor
Versions affected: 2.8 to 2.8.5, 2.7 to 2.7.7, 2.6 to 2.6.10 and earlier
                   unsupported versions
Versions fixed:    2.9, 2.8.6, 2.7.8 and 2.6.11
Reported by:       Juan Leyva
Issue no.:         MDL-49994
CVE identifier:    CVE-2015-3181
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-49994

==============================================================================
