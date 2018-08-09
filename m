X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["433" "Thursday" "9" "August" "2018" "09:38:28" "-0700" "Matthew Garrett" "mjg59@google.com" "<CACdnJusWjOs65_8MYmFqHiEqrmkOMugu02K=U1fM3eTvjiMw+g@mail.gmail.com>" "13" "Re: [oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)" "^Cc:" nil nil "8" "2018080916:38:28" "[oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)" (number mark "        mjg59@google Aug  9   13/433   " thread-indent "\"Re: [oss-security] Linux TCP implementation vulnerable to Denial of Service (CVE 2018-5390)\"\n") "<20180809125120.GA2475@openwall.com>" ("<CACdnJuvnc9iwaK6n9T_+PO0CUz9HYErQQ6eY+sJZM_o_h9tfaw@mail.gmail.com>" "<zNUITbiErWCUUDg_EPIWn8eZBFHlC7rwJsZ8XinnBTSFr6OydsAZUvPs8nXHKBxi0DJFw8K2KmePb8dysPMxfPcOURSJ6QR2HcKgaVRmmTs=@itk.swiss>" "<20180809125120.GA2475@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5180 invoked by uid 550); 9 Aug 2018 16:38:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5161 invoked from network); 9 Aug 2018 16:38:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0cCGNd7uYP0MUQUg4P+L4BEnz+BGnupQJJtw2fGbJ6Q=;
        b=tt3i/B2nA9td6W6vwY001D6EnjH9lEDHHoYnKLiFZw73Lyu/WvUsSfZBUQAzdYW8jb
         u/zZ6hHHqXqCoMkRqQ9cwWMUfF071DK3Fg7xMwz4OWAVHETxARtYvnDJzYJOe7d+eN4w
         bznjlo0kJQhz+qcq1vGIBkWyKYrBaAZEU0S8TYzjLLfd4+K2Y50MKvNWZ+0MGTN6Ws1D
         ntbQ2y14i+FXON9uXOIAOOfA4688hdTntXYzbqZMogkzsiWWgqa2tPWme4mZTiAt1eEV
         K2HJCsPoQhE6YAiYKN/418qFom2RqH279FqeXfbiap9zd5olDbRxLTPoRQ0WcLjhnJsI
         aQAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0cCGNd7uYP0MUQUg4P+L4BEnz+BGnupQJJtw2fGbJ6Q=;
        b=UhRbJ5GmgDh1/Ks8tCkMU4Zzh0HrBmBAK277SXeCFqnGoXzLRf0DmfywhG6b8WeUhJ
         u9jL+QrzlYzFo+gFiwk8clGqH6PlG8LuKZUiNWCX84+Q/hkUD2c1+vsAmEfmdgkmy6SO
         txGkriSurdDayGHP/WbvpSUokNI3amL5EsEmuNSNNy7cNCc+1ModV6dr2/xvL/deTkEK
         rUCVk3YRl7iIMBq13hx5IcXnHZqs8gocej5DvC8cg8EgXEVZdbYPqFCpLCEzPD6l1Q0O
         30jNVdRcA5k4+Wjd7JbJeau8wNgfJTjtcSOertnLGAScb0mQG3uh+ul81S72nhrgrtH4
         IeIw==
X-Gm-Message-State: AOUpUlFiicLLm9aVxShAFUTKhT2JhUu2VpJXCjiMfJP9wXR2bowIWBOi
	YTD/DnT5hjQCBujfOagUzCF+4FIXRRFw+CoHUooc4w==
X-Google-Smtp-Source: AA+uWPy/mXCEa0Y7iNv+nsxP0HEjqpMDK6wYPZbOc/OmxBru7HK9pf5QJaT7+nzPhh2Y4t/uU2rMGjIs2l+ORf09pzQ=
X-Received: by 2002:a24:55cd:: with SMTP id e196-v6mr2484216itb.8.1533832720064;
 Thu, 09 Aug 2018 09:38:40 -0700 (PDT)
MIME-Version: 1.0
References: <CACdnJuvnc9iwaK6n9T_+PO0CUz9HYErQQ6eY+sJZM_o_h9tfaw@mail.gmail.com>
 <zNUITbiErWCUUDg_EPIWn8eZBFHlC7rwJsZ8XinnBTSFr6OydsAZUvPs8nXHKBxi0DJFw8K2KmePb8dysPMxfPcOURSJ6QR2HcKgaVRmmTs=@itk.swiss>
 <20180809125120.GA2475@openwall.com>
In-Reply-To: <20180809125120.GA2475@openwall.com>
Message-ID: <CACdnJusWjOs65_8MYmFqHiEqrmkOMugu02K=U1fM3eTvjiMw+g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000006d8bcc057303422d"
Cc: oss-security@lists.openwall.com
Date: Thu, 9 Aug 2018 09:38:28 -0700
From: Matthew Garrett <mjg59@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux TCP implementation vulnerable to Denial of
 Service (CVE 2018-5390)
To: solar@openwall.com

--0000000000006d8bcc057303422d
Content-Type: text/plain; charset="UTF-8"

On Thu, Aug 9, 2018 at 5:51 AM Solar Designer <solar@openwall.com> wrote:

> I agree that more detail must have been posted in here, especially given
> that such detail was on linux-distros.
>

This is a completely reasonable objection, and also apologies regarding the
length of time between CERT disclosure and my posting.

--0000000000006d8bcc057303422d--
