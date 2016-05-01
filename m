X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1417" "Sunday" "1" "May" "2016" "07:43:04" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160501054304.GA31390@eldamar.local>" "51" "[oss-security] CVE Request: libpam-sshauth: local root privilege escalation" nil nil nil "5" "2016050105:43:04" "[oss-security] CVE Request: libpam-sshauth: local root privilege escalation" (number mark "U       carnil@debia May  1   51/1417  " thread-indent "\"[oss-security] CVE Request: libpam-sshauth: local root privilege escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32041 invoked by uid 550); 1 May 2016 05:43:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32019 invoked from network); 1 May 2016 05:43:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=F37JQrixMWZ8bcm9DacCMv/sBDrdLh2LdRl6+UFczJU=;
        b=JBSN4Kn9AUqLMVXaJdSv1Obo3HOEZPMwH8bJyorpgXXtfvIgyh2NxNB2fiP6FyKxV/
         tqkbA7oI9+LE7DYSiaObejODmA5dFRqiabNXTg+yKgr/0Dh8wxFh4Zm3AhEXwqMR8i3M
         md4S8lfXJVRB/HrmlUfRQYaRY66D9IxOqDwdHFGEARGStRdM04C9A86B9z+d+83IN1E5
         O1UknMuBJdKx0F2uwuEIw0zKpOXFFgrQNmYJwBMQIYvkJ5UQdwtH6uXBNLn98xqj9PAw
         gB+Gi9Nd4+dekKjaG8CO2BhdG4CQpT9xnmxbX03cNl8X7JrWLQb5puxeRbtYdDokr98J
         WTXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=F37JQrixMWZ8bcm9DacCMv/sBDrdLh2LdRl6+UFczJU=;
        b=Qjv+1TMUh30vtgy1Rl9d6+VdIIbM3v6MJFqRKli76wOIM1PI3ZMs2MROIGWa9EyFRw
         qh9jgdXBi1gQyv5jZ6aPMWMe66zy+fphQfnlyzssl26HXXdLt3l45cc0Vh9PzkRCH1Jf
         mJY5XZebKjKu/h/CTD84+roo96TPCYT5Wg5RsgwzNnohQwv/5zb7g1oK2FKabb3PBauJ
         x84zVM1eh5fnxF4zQiQs07V7UuAHbNV4nLbbO8Ih3NWF6F8mpY5vyt8sDjNdMcn4BGzK
         bR1nC4cxzUrKEfBFeoBuTg2LNlgUHwgUVkM9CbpxYvHpL76jplFIHoc+ORRKI5sFDFFC
         tS4A==
X-Gm-Message-State: AOPr4FWM9/mdDQ3h82sXEBiXGXwgrILvKEWLn3r1O1URMIfjMJQWItWI/fgu4V/Efq7bKg==
X-Received: by 10.194.58.114 with SMTP id p18mr28521583wjq.84.1462081387268;
        Sat, 30 Apr 2016 22:43:07 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 1 May 2016 07:43:04 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160501054304.GA31390@eldamar.local>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="PNTmBPCT7hxwcZjr"
Content-Disposition: inline
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [oss-security] CVE Request: libpam-sshauth: local root privilege escalation

--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi

Due to a programming error, libpam-sshauth returned PAM_SUCCESS where
it should fail with PAM_AUTH_ERR. This was fixed in Debian in the last
upload to unstable with the attached patch.

Introduced with:
https://bazaar.launchpad.net/~ltsp-upstream/ltsp/libpam-sshauth/revision/93/src/pam_sshauth.c
Fixed by:
https://bazaar.launchpad.net/~ltsp-upstream/ltsp/libpam-sshauth/revision/114

Could you assign a CVE for this issue?

Regards,
Salvatore

--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=return-pam-auth-err-with-system-user

Return PAM_AUTH_ERR when a system user. This prevents the pam module
from returning success without asking for authentication credentials!

diff --git a/src/pam_sshauth.c b/src/pam_sshauth.c
index 939ea79..879c9e5 100644
--- a/src/pam_sshauth.c
+++ b/src/pam_sshauth.c
@@ -101,7 +100,7 @@ pam_sm_authenticate (pam_handle_t * pamh, int flags, int argc,
     }
 
   /*
-   * Is it a system user?  Succeed.
+   * Is it a system user?  Fail.
    */
 
   pam_debug (pamh, "username %s", username);
@@ -110,7 +109,7 @@ pam_sm_authenticate (pam_handle_t * pamh, int flags, int argc,
     {
       if (pwent->pw_uid < UID_MIN)
         {
-          return PAM_SUCCESS;
+          return PAM_AUTH_ERR;
         }
     }
 

--PNTmBPCT7hxwcZjr--
