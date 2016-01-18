X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1889" "Monday" "18" "January" "2016" "11:56:30" "+0800" "Marina Glancy" "marina@moodle.com" "<CAB_jSYz34azcO7mmL+fotU58he7e6jKxuojbyS4Q3HFPVPQaCw@mail.gmail.com>" "43" "[oss-security] [vs] moodle security release" nil nil nil "1" "2016011803:56:30" "[oss-security] [vs] moodle security release" (number mark "U       marina@moodl Jan 18   43/1889  " thread-indent "\"[oss-security] [vs] moodle security release\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26547 invoked by uid 550); 18 Jan 2016 03:56:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26507 invoked from network); 18 Jan 2016 03:56:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=moodle.com; s=google;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=uAyMkc1c5sIfq7v+tjuLRXUhqLAKH1tuf3ZUmWKUmiM=;
        b=ggEl49JIO88mPi1dd5JtxBGBBsPEU5oZBfYu2mUXCUteMzesID1361mOgJbQxc6tba
         D+E72JqnAHSXYZn5HSrvxAX8MlTenxXzV4wa0bMCAwaH3ziIdS9mpXnnowijjCEoh6VZ
         Q/1HiPrG6XiAAH3c2Z0dsmMPUT6KF5W3lLDkc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=uAyMkc1c5sIfq7v+tjuLRXUhqLAKH1tuf3ZUmWKUmiM=;
        b=PgFbkzL6kFNtY4nihiqOx8LiMzF0GjGcKvidSivVzmsu2dW5AJAVt0PRD6+m1ktHvJ
         FitKxpbWQpdi+PFKkWV5bdvhCWfkLPlX42zNXnYnqD/2q+/IiCVa6teWYROqBVcPal8t
         5bWQLIINAkHmRCL8Qo4Mbbx74evEQt+EbncGHZyottOJjnej0iNJigOJZTdiIqVW2ClY
         XN7po3b0GRmj2KgCbaGHjqbugVzZsikpRcgb6Px+U9i01x1Jo3HVcVdTYiw60r5ZsfJc
         UfI5qoX0IXhSbq6WrGxpQ15jMVYCO+PR73C9OBreGBaNGiB6ZdxB0KpVNOoH4na9u5EF
         Al9Q==
X-Gm-Message-State: AG10YOQO2/KdLgkA7e1bUp0VNwF+5XQk2MneggWv7HEzcJiVh1dJP1mKg6AzIbZGwrLmmiJurS1F1aZyso5TW9Nl
MIME-Version: 1.0
X-Received: by 10.28.88.210 with SMTP id m201mr11205393wmb.76.1453089390700;
 Sun, 17 Jan 2016 19:56:30 -0800 (PST)
Date: Mon, 18 Jan 2016 11:56:30 +0800
Message-ID: <CAB_jSYz34azcO7mmL+fotU58he7e6jKxuojbyS4Q3HFPVPQaCw@mail.gmail.com>
From: Marina Glancy <marina@moodle.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] [vs] moodle security release

The following security notifications have now been made public. Thanks
to OSS members for their cooperation.

Marina Glancy
Development Process Manager
e: marina@moodle.com
p: +61 8 9467 4167 w: moodle.com

==============================================================================
MSA-16-0001: Two enrolment-related web services don't check course visibility

Description:       Web services core_enrol_get_course_enrolment_methods and
                   enrol_self_get_instance_info did not check user permission
                   to access hidden courses
Issue summary:     External functions core_enrol_get_course_enrolment_methods
                   and enrol_self_get_instance_info don't check course
                   visibility
Severity/Risk:     Minor
Versions affected: 3.0 to 3.0.1, 2.9 to 2.9.3, 2.8 to 2.8.9, 2.7 to 2.7.11 and
                   earlier unsupported versions
Versions fixed:    3.0.2, 2.9.4, 2.8.10 and 2.7.12
Reported by:       Juan Leyva
Issue no.:         MDL-52072
CVE identifier:    CVE-2016-0724
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-52072

==============================================================================
MSA-16-0002: XSS Vulnerability in course management search

Description:       Search string in course management interface was not
                   escaped when being output creating potential for XSS attack
Issue summary:     XSS Vulnerability in course management search
Severity/Risk:     Serious
Versions affected: 3.0 to 3.0.1, 2.9 to 2.9.3 and 2.8 to 2.8.9
Versions fixed:    3.0.2, 2.9.4 and 2.8.10
Reported by:       Oliveira Lima
Issue no.:         MDL-52552
CVE identifier:    CVE-2016-0725
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-52552

==============================================================================
