X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1506" "Thursday" "8" "September" "2016" "14:58:12" "+0200" "Andreas Lindh" "addelindh@gmail.com" "<CALfBxETd+QLOhPkR=W9EZtvd8w7K15+bWVVDjAmQbG_x=5dqcg@mail.gmail.com>" "40" "[oss-security] CVE for Sentry / OpenCFP" nil nil nil "9" "2016090812:58:12" "[oss-security] CVE for Sentry / OpenCFP" (number mark "U       addelindh@gm Sep  8   40/1506  " thread-indent "\"[oss-security] CVE for Sentry / OpenCFP\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30203 invoked by uid 550); 8 Sep 2016 13:24:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20147 invoked from network); 8 Sep 2016 12:58:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=OUze5ior8FIq2+jfidrNzsmFRyDJSUWdpfymSUYt0uc=;
        b=UgvzteTrfLT1CMgkWkTFBFfcr2uF51ZOMGucyXgWBBgkale5qNPDMjDrjAqlnHd9rl
         Cdp7NbWcHDFWil0BTQgVAIUIBHl3EfZ6e1mhgEFRn+RZBX3FutIByrFXB2Z+I4Ei/7vF
         2HkJ1+kOh5DJsga0EpPdMsDVubHkaodawGW+Qzaf/BnwjT83RZm11yf+yhP7O9HPkAwX
         TI2fTPtG1mVK3J/vL/eosoq8o+AJo0RT1OT6FkEaYqNtVQyPYifdm1OtdsZZyLsopxDk
         zQHcISM/j3+vOd31DAjDC1DrfMYUIm4dPZvST/OhoKHm7gt1QbGH28T3H87XzaL7FeXK
         VKIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=OUze5ior8FIq2+jfidrNzsmFRyDJSUWdpfymSUYt0uc=;
        b=gHItac/kdEFQFi/9qBksCwnua/vzdDA2r9YfRs92/cJOxlj/Sd566AoLAbZAclH29V
         dCl2QTUtDir+Zde1ERKxs4fVm2H/ufEFgS1esVs5V2k3YTU5wBQ/yv1FEWPGlv0fzSO+
         ThPQQu1vfjf4AGhlNiLxpvWOPPEGKblM2oN7Raoa6xDjpNTuWNfxyMtxn8xDpkEEbcWX
         eYPkqIBNud/yaODe1m1Ul6rjcr/64rcn3rVact7fFbvYgM4V0OoSxBp2PXkvjLEPLCvs
         uH+gbwmmfaUsH4R/BdokP7LBer451ymHOMd6yTWtIsCs7pgAJw6EZi8q+9P1JVxbbV1k
         Cd4g==
X-Gm-Message-State: AE9vXwMksufr/jFrvW2yWd+5yiBSY7dC6I2J/I+CAgKFDvCwccE/8YBF7byIFq7aspVAkys7a3oXvIhuTC3Csg==
X-Received: by 10.129.109.201 with SMTP id i192mr11491605ywc.4.1473339492824;
 Thu, 08 Sep 2016 05:58:12 -0700 (PDT)
MIME-Version: 1.0
From: Andreas Lindh <addelindh@gmail.com>
Date: Thu, 8 Sep 2016 14:58:12 +0200
Message-ID: <CALfBxETd+QLOhPkR=W9EZtvd8w7K15+bWVVDjAmQbG_x=5dqcg@mail.gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=001a114e81d21a809f053bfe95bd
Subject: [oss-security] CVE for Sentry / OpenCFP

--001a114e81d21a809f053bfe95bd
Content-Type: text/plain; charset=UTF-8

Hi list,

I recently reported an issue in the Sentry PHP auth framework that was
exploitable in OpenCFP. The bug itself is in the password reset
functionality, where the following code in Sentry is responsible for
verifying that a supplied password reset code is the same that is stored in
the database for a particular user.

public function checkResetPasswordCode($resetCode)
{
return ($this->reset_password_code == $resetCode);
}

This code will return True or False, depending on whether the password
reset codes match. The problem arises because the Sentry database schema
defines the default value of the password reset code as NULL. Because of
this, if an attacker can pass NULL to this function (by supplying it as a
password reset code), the checkResetPasswordCode() function will return
True, allowing the password change to go through.

This is a write-up of how this was exploitable in OpenCFP:
http://haxx.ml/post/149975211631/how-i-hacked-your-cfp-and-probably-some-other

This is the patch in OpenCFP:
https://github.com/opencfp/opencfp/commit/2f747fc219b73f9b0a11308083d2a356056752a4

This is the patch in Sentry:
https://github.com/cartalyst/sentry/commit/c679730b8848686f59125cd821bf94946fb16a94

Can I have CVEs assigned for this please? I am of the opinion that Sentry
and OpenCFP should have their own separate CVEs, but that is of course up
to Mitre to decide.

Cheers,
Andreas

--001a114e81d21a809f053bfe95bd--
