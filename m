X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["386" "Tuesday" "20" "July" "2021" "14:57:39" "+0200" "Mauro Matteo Cascella" "mcascell@redhat.com" nil "17" "Re: [oss-security] CVE-2021-33910: Denial of service (stack exhaustion) in systemd (PID 1)" nil nil nil "7" nil nil (number mark "U       mcascell@red Jul 20   17/386   " thread-indent "\"Re: [oss-security] CVE-2021-33910: Denial of service (stack exhaustion) in systemd (PID 1)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-33910: Denial of service (stack exhaustion) in systemd (PID 1)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30342 invoked by uid 550); 20 Jul 2021 12:58:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30317 invoked from network); 20 Jul 2021 12:58:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626785873;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ADsfNGFWbEkp3XXDOxXy55xabd98Y1GFfSVFKusUsm8=;
	b=h8YiWPA8glVkks+jdjUw/dlq3vMEAUla41tGDzOPTdcdjw9pJuisrgghBJSLRUpjMP7Kou
	AQAj8yNOeGOV7fzEcX1n1Tdynm0KBSor06mzPZJDTsJ8mLM5hHvqtuhQY+fv3YGa3miQ/E
	32bzyaXQwj3JrYs3Ah3xz/TCKXN2Mes=
X-MC-Unique: 5z6PiY_POBSdO0I8CSz3Ow-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=ADsfNGFWbEkp3XXDOxXy55xabd98Y1GFfSVFKusUsm8=;
        b=tM01dExrLFy9JxB60Tdtd5AYP7r4AkW1VWlheUV/vxX26mC4biTza2cIabu4ePREPH
         ktjO0PdABpkFIBEngYe04xuMkol/WMv0Y+J81wrTwfEMsfLBvSEjBqj8nzKNYvdh+Ga0
         n+7hWgxpYJ96rbRPy7D/S1YUfLpkoGCjsVMDMaBHRfVRm+MpJAv7jlG9V3f9gTJK5tOR
         ZZEkaKJCywGvwxsd+gJnnRPSGZaxij7WkmKw9M7h08rIlq+Qu9btLjGCON+6h7LqL32v
         ZkoL406cFOVSlmHQcEBADMdRr9+szGRN1oQfCqolzbGsFOT7JVC/uCvV2hLMMm6Vum5M
         4eSQ==
X-Gm-Message-State: AOAM530yw7NydeRl+5M9gBw+NtokBndWQTGkl+ut+hiPTRg7QWvUHqN4
	neY1+aapoFG9ZBlMAdrRG54xaZak8YkqjxQUSUjSYIQhPTpTmrI9rryLzM9PiU+QVAcxITey1Jl
	ZaaGrL/uykdbDNRVcf1ahfm6F8BVODJoKcsrCt7tEYra4
X-Received: by 2002:a17:90a:2f63:: with SMTP id s90mr34966686pjd.168.1626785870381;
        Tue, 20 Jul 2021 05:57:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJysLLlGbmQvGu3j8XHuC/fPEGSmmtR7GaJLgJTBhGcvNW9n5Tf+V/OElkJfDUi71qiwAMjQXAbUCpyucSkxrbE=
X-Received: by 2002:a17:90a:2f63:: with SMTP id s90mr34966668pjd.168.1626785870064;
 Tue, 20 Jul 2021 05:57:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210720123712.GB19170@localhost.localdomain>
In-Reply-To: <20210720123712.GB19170@localhost.localdomain>
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Tue, 20 Jul 2021 14:57:39 +0200
Message-ID: <CAA8xKjWvos8zXnwjbRydi-edZhpn259KLKoLfbhspEnQwuAmwg@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2021-33910: Denial of service (stack
 exhaustion) in systemd (PID 1)

On Tue, Jul 20, 2021 at 2:41 PM Qualys Security Advisory <qsa@qualys.com> wrote:
>
>
> Qualys Security Advisory
>
> CVE-2021-33910: Denial of service (stack exhaustion) in systemd (PID 1)
>

Upstream commit:
https://github.com/systemd/systemd/pull/20256/commits/441e0115646d54f080e5c3bb0ba477c892861ab9

Regards.
-- 
Mauro Matteo Cascella
Red Hat Product Security
PGP-Key ID: BB3410B0

