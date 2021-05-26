X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["540" "Wednesday" "26" "May" "2021" "18:25:58" "+0200" "Paolo Bonzini" "pbonzini@redhat.com" nil "17" "[oss-security] Re: CVE-2021-22543 - /dev/kvm LPE" nil nil nil "5" nil nil (number mark "U       pbonzini@red May 26   17/540   " thread-indent "\"[oss-security] Re: CVE-2021-22543 - /dev/kvm LPE\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2021-22543 - /dev/kvm LPE" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13698 invoked by uid 550); 26 May 2021 20:31:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11955 invoked from network); 26 May 2021 16:26:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622046364;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J4IB3x4ParAROr1ayH3bQVcS72ppsKfKo0JFU/dno9k=;
	b=eZQ6fYIaCvvkVbqwDevoIShFohG1xeGLwTkeopxMGFvo3ontrv8JuldWSHyu/qitAgDEZD
	XdIsNZM15thF0lZk/4vz2fhIfu1HjPk6vrR/ywPwFs6ifqKIAlJSLsyMnURPMu4VXKju0F
	Ad5SzEQ0AWRBARkQz9vdP43lz2PAvJE=
X-MC-Unique: zFuLAuU1PhKG341amNrbXA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=J4IB3x4ParAROr1ayH3bQVcS72ppsKfKo0JFU/dno9k=;
        b=KZUXj19wbhOhVvUYKFmYT4zRqalJk1IEBL0kasEAm2Y3ilQgahm6TseAqOBjseDVp4
         +9BJDJs2ozR2OgxzK66m/ZwFq3oNwMyo+7/7jWOIHt6b0KFNnBy0RDB8xTAaH9KVOg40
         i0ilP6n6iCrJmWKbSPuuBji34cbxKeM5CqzyPUICWCpBs+Lb1Va27Hvrrjr5EnV0KfoJ
         pfKDbg4bDBgB/XTq7O6z9zfHDN5NxBgWTNuKH8P1wT63iumfk5h/0NIhDcqWx9S1NSCW
         KUkA30HjXs4kHJu+NukUGgmavpXywuIl78QH7SdnG2e5PMXTGb9lSGlKrzzQZalKzr8B
         WU+g==
X-Gm-Message-State: AOAM532hhWnIJNvUbmUHcS8yqtDCrJYPnpzJcUkCkTZhxIeqkdgfDxkC
	Jc5pA7MEyW6VCP6M8q1AH3/eX+h3R7dBvXyKFh73eUKsA6gAXeg196U6N5+ynJk0WYb+1EaYU7w
	vofsURtZ5N3nPKqUZLndWByyXoBV4
X-Received: by 2002:a17:906:d04f:: with SMTP id bo15mr8470454ejb.405.1622046359833;
        Wed, 26 May 2021 09:25:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw1DvPNqzU6YpRG7BDkMhsLbqbqcpoJ2vsiPtIC53M93uvtDEy8GwHNrSuBBlULSBdaCjOLsQ==
X-Received: by 2002:a17:906:d04f:: with SMTP id bo15mr8470433ejb.405.1622046359612;
        Wed, 26 May 2021 09:25:59 -0700 (PDT)
To: oss-security@lists.openwall.com, evn@google.com
References: <CAFswPa_QOAgf6wgng+KJcPJKykNG3zQWyQfiXWHj8VK0W+_tKg@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <9046efe7-a418-af68-910a-39e955f5fad9@redhat.com>
Date: Wed, 26 May 2021 18:25:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAFswPa_QOAgf6wgng+KJcPJKykNG3zQWyQfiXWHj8VK0W+_tKg@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=pbonzini@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Re: CVE-2021-22543 - /dev/kvm LPE

On 26/05/21 15:48, Eduardo' Vela" <Nava> wrote:
> Hi
> 
> I believe this still doesn't have a patch, but +Paolo Bonzini 
> <mailto:pbonzini@redhat.com> has been working on one for some time now.
> 
> Please use CVE-2021-22543 to refer to this issue.
> 
> Advisory: 
> https://github.com/google/security-research/security/advisories/GHSA-7wq5-phmq-m584 
> <https://github.com/google/security-research/security/advisories/GHSA-7wq5-phmq-m584>

Indeed, I had to put that on hold :( but I'm aware of the issue and I'm 
working on it.

Paolo

