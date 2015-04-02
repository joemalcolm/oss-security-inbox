X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["657" "Thursday" "2" "April" "2015" "09:32:56" "-0700" "Roland Dreier" "roland@purestorage.com" "<CAL1RGDWtbEzepxbmHUzteJ-+dcW=VxmTshGzsSN219Tgx3bMvQ@mail.gmail.com>" "15" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" nil nil nil "4" "2015040216:32:56" "[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access" (number mark "        roland@pures Apr  2   15/657   " thread-indent "\"[oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical memory access\"\n") "<AM3PR05MB0935CC450033AE6DFF0B14B3DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>" ("<AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>" "<CAL1RGDXQh2+WQxf9w2Qvo-Npr2MnBZYObyfYfy7fn-Pfue=Odg@mail.gmail.com>" "<AM3PR05MB0935CC450033AE6DFF0B14B3DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19950 invoked by uid 550); 2 Apr 2015 23:10:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13763 invoked from network); 2 Apr 2015 16:33:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=purestorage.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=d+uiH3r6pgsvNIs0lSGtKARERZTYk1d38US3lPi8duE=;
        b=IaB9Vt5hWKwKAI269oqLsw9ThsAi5fDEW+TYxAed+F8YwmrL8nbTYg0vSttN8a/xSa
         IMiGC5ScS4OQBKxnFAiMiBpFmqVVxJ1aeYvt3GypyvVArgWFutoFVgzaJaF+5lhLBJLW
         O/Vdb+yAdQG2cMqs9yaQFn3VaTMoTgRMHroxk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=d+uiH3r6pgsvNIs0lSGtKARERZTYk1d38US3lPi8duE=;
        b=UG9M8TqmKPlW8fTr2GDcsKAup0um0M6JEv5sIz7tX5wOEwH7OWLSol7Oq9t45HolDC
         ei0xnqFdD3FvDVxzr16uD3QK6ek0shfLUH+68HjZh5J8bWbgD++UWGYwPYhBUpsuTkBs
         wCXg/pc97tMpkQ2cH8vAIAItbPCNx9k9K78hLN8TSViIcEiebC/jK++yCXGfbVKeCa06
         PMZD1IRunmOCbw4fnGeImBAt/Opq1MYepZZDFIg6n4FynJPeRWQi42C9buNeDGVi9u1s
         hTNX/SJudniPnvKeD1KvZJ2DizcAVGupqhq5v+aaK4JoP9LvJ4xIU4BA2Id19Kd9t+w3
         hRgQ==
X-Gm-Message-State: ALoCoQmh36ABKY9fvz+XeamnRfec9svMTV79GQfu58OiWa6cE/Ox1sXUuRvavCYdIFsjss6kxmTusjQpTbGr7spLs4ksp35m9x9Mmk54jQtY2jENxrYvwx0jiUdcPtPHEpNLhpScbKiStnCEp/2OxyZ4gB324XLFgW3ghe98laiUAkgGBR1Nn1M=
X-Received: by 10.112.147.131 with SMTP id tk3mr14508393lbb.11.1427992397322;
        Thu, 02 Apr 2015 09:33:17 -0700 (PDT)
X-Received: by 10.112.147.131 with SMTP id tk3mr14508378lbb.11.1427992397221;
 Thu, 02 Apr 2015 09:33:17 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <AM3PR05MB0935CC450033AE6DFF0B14B3DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>
References: <AM3PR05MB0935AABF569F15EA846B8E72DC000@AM3PR05MB0935.eurprd05.prod.outlook.com>
 <CAL1RGDXQh2+WQxf9w2Qvo-Npr2MnBZYObyfYfy7fn-Pfue=Odg@mail.gmail.com> <AM3PR05MB0935CC450033AE6DFF0B14B3DCF20@AM3PR05MB0935.eurprd05.prod.outlook.com>
Message-ID: <CAL1RGDWtbEzepxbmHUzteJ-+dcW=VxmTshGzsSN219Tgx3bMvQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, 
	"<linux-rdma@vger.kernel.org> (linux-rdma@vger.kernel.org)" <linux-rdma@vger.kernel.org>, 
	"stable@vger.kernel.org" <stable@vger.kernel.org>
Date: Thu, 2 Apr 2015 09:32:56 -0700
From: Roland Dreier <roland@purestorage.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2014-8159 kernel: infiniband: uverbs: unprotected physical
 memory access
To: Shachar Raindel <raindel@mellanox.com>

On Thu, Apr 2, 2015 at 12:52 AM, Shachar Raindel <raindel@mellanox.com> wrote:
> This is a common practice in the security industry, called
> "responsible disclosure."
>
> Following the kernel  security bugs policy [1], we reported it to
> the kernel security contacts few days before making the issue public.
> Few days after issue became public, we published a clear report to all
> of the relevant mailing lists.

Isn't the point of responsible disclosure to delay disclosure until a
fix is in place?  What's the point of sending a notification to the
kernel security team if you're going to disclose publicly before the
upstream kernel is fixed?

 - R.
