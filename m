X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["930" "Sunday" "10" "January" "2016" "18:29:54" "-0800" "Reed Loden" "reed@reedloden.com" "<CALPTtNXsEMS0HKL5Lk9tVUp+n=Lr58j30nQ8QcaKDAExSrtbJA@mail.gmail.com>" "28" "[oss-security] CVE request: Arbitrary search execution in ruby gems auto_select2 <0.5.0 and auto_awesomeplete <=0.0.3" nil nil nil "1" "2016011102:29:54" "[oss-security] CVE request: Arbitrary search execution in ruby gems auto_select2 <0.5.0 and auto_awesomeplete <=0.0.3" (number mark "U       reed@reedlod Jan 10   28/930   " thread-indent "\"[oss-security] CVE request: Arbitrary search execution in ruby gems auto_select2 <0.5.0 and auto_awesomeplete <=0.0.3\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27960 invoked by uid 550); 11 Jan 2016 02:30:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27926 invoked from network); 11 Jan 2016 02:30:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=ScO+3JWBbaoz0OUlmp1KP6Sd6lQkGQlzlrTsl6JHV38=;
        b=HC3Ps6IyQbVGBKYlEqF3kVtXwzmstMpAjhAvu6dPaUXN7ho+x8or4jbSj/I597v086
         S5EzvVL6BfpXFQVzC8xg1+cpHwyLHvWO3RRCY+5Cfk92+G0hAyPuI8pKreojuYsnxjOA
         KlsADuVKYqfKOCMVwqhkga2WUyYB8PZzfRxYg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=ScO+3JWBbaoz0OUlmp1KP6Sd6lQkGQlzlrTsl6JHV38=;
        b=KjsNX1KKF4v1Q2G22+VeM1lHgGUkF2uURy3t7lKz5Hr0J/cc7O2S7VlIogfOygsvqs
         j3Kw0yQYRnBYmlbGDKmQy2Bve7JX0jRJvoIYX1OtRH1s5e0w3aG9xmHS6dQD9eEzlB7X
         Q9kZ2AqA5dC2Xmg8wUKcSdC/OatbF7IeD2MYBvvcvc385aY/tvPQW+Xf6V0gYgDWENuW
         0gn4gSVqJH7nVx27U1DrwdZB1P0fIxh3xFYUOGtM2Y73PvvLPgTIaTHYTTzWhsCUaGSO
         osKuDc9lL3PvCRimqs8LXlBL6yEADBgeOoz3hxHMy3NhBXIbMxa6rT/lI/jnPVuL2VPi
         CTOg==
X-Gm-Message-State: ALoCoQkSZWKJJ2/KX1jYLiGhTcJBy/BSmRoWFmAA3RgGPkhY2z7GzrJNnJrzh4RCYBQt9Kq+L20qcU4KvSTcm7gZlPvqThl1lEvbR4JqLSkTrnBXtUt7cM8=
X-Received: by 10.202.170.80 with SMTP id t77mr86062052oie.78.1452479414191;
 Sun, 10 Jan 2016 18:30:14 -0800 (PST)
MIME-Version: 1.0
From: Reed Loden <reed@reedloden.com>
Date: Sun, 10 Jan 2016 18:29:54 -0800
Message-ID: <CALPTtNXsEMS0HKL5Lk9tVUp+n=Lr58j30nQ8QcaKDAExSrtbJA@mail.gmail.com>
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>
Content-Type: multipart/alternative; boundary=001a113ca7e4871472052905b771
Subject: [oss-security] CVE request: Arbitrary search execution in ruby gems auto_select2
 <0.5.0 and auto_awesomeplete <=0.0.3

--001a113ca7e4871472052905b771
Content-Type: text/plain; charset=UTF-8

Another RubySec contributor noticed this --
https://github.com/rubysec/ruby-advisory-db/pull/227

The auto_select2 and auto_awesomeplete Gems for Ruby contain a flaw that is
triggered when handling the 'params[:default_class_name]' option. This
allows users to search any object of all given ActiveRecord classes.

auto_select2:
* Homepage: https://github.com/Loriowar/auto_select2
* Download: https://rubygems.org/gems/auto_select2
* Reported in: https://github.com/Loriowar/auto_select2/issues/4
* Fixed by: https://github.com/Loriowar/auto_select2/pull/7
* Fixed in: v0.5.0

auto_awesomeplete:
* Homepage: https://github.com/Tab10id/auto_awesomplete
* Download: https://rubygems.org/gems/auto_awesomeplete
* Reported in: https://github.com/Tab10id/auto_awesomplete/issues/2
* Still unfixed.

Needs a CVE assigned.

~reed

--001a113ca7e4871472052905b771--
