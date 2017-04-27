X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1036" "Thursday" "27" "April" "2017" "10:09:13" "+0200" "Emilio Pozuelo Monfort" "pochu27@gmail.com" "<c5fea488-4723-ae60-3a48-15a9c234bb70@gmail.com>" "39" "Re: [oss-security] kedpm: Information leak via the command history file" nil nil nil "4" "2017042708:09:13" "[oss-security] kedpm: Information leak via the command history file" (number mark "U       pochu27@gmai Apr 27   39/1036  " thread-indent "\"Re: [oss-security] kedpm: Information leak via the command history file\"\n") "<87k26628ox.fsf@curie.anarc.at>" ("<87k26628ox.fsf@curie.anarc.at>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3095 invoked by uid 550); 27 Apr 2017 11:07:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17491 invoked from network); 27 Apr 2017 08:09:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=QgQqL8RWr/+YlvH3v/1oBSTGHIx7I97YhGpR1u88uZo=;
        b=YtZdLVMtmsKW6EBdVczCHhts0gJ3FCZl5D2+kgfO8N8w3O+7r+FZVDQiTub2T8K/wF
         jpj8VIpy7gcM5ksQCFXCqhj1bWQEMGSw54u8qi0y8Oh0Yb0sd4CA93jDBzx4knL4HDGU
         Y2ZnN/WU9czRFBkTo0d1pCs79xAMgrV0f82gV6nJi6jp8nuO3i5ZiYZaTShPmGyOjfn9
         aIysL8Xd3vC9LxwGwz2yXQM9uQTiNs+ADMlMopN8VdtwZ747p11Ymzzl4Y96eGWGX3md
         Uire66JY3QhoVGsLnQk7iqcx6eQ8KmMSbLPFYyhqOSDrMCgwFqqNPClRPfUx3cyiZwZ3
         SYKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=QgQqL8RWr/+YlvH3v/1oBSTGHIx7I97YhGpR1u88uZo=;
        b=Ilkf6OV+x6DNMwFZvX1rhWvM16KRx06znjMrKueBKCGjJ/p3eyFPWgMbcH0iHbd/o5
         CPyJh2vb4iCnBo2qqwcsUUst1jIsg2r7YXbkf9YZ/Sans9//kIaJv85souyfI4dxtHSO
         L6Ap0RziXWpDd6fFvGI2dTGF/ChbIGGdZhyqGo9NAIihd3yqi3OYTCKgaCOxe7w6bdOM
         dDkn5kSDdPiylM1YcuWg609Rsbc7nacUxPrV8ePItnZJSvmhViKiYpssWlSbbmm6tH4D
         /SOW0xnfyFYEUjKh0B4PtK4tnXfoICti4FsCj8VhtOu2LjjlmbCrus7vCen5+QAVq8/c
         INlA==
X-Gm-Message-State: AN3rC/5qbnijKic7gvDIT515lyIsxoHOe/8v8bp3E5MYmw9szPFX1Ax7
	SDSAOzuAVXwjYpWL
X-Received: by 10.28.148.3 with SMTP id w3mr1267212wmd.8.1493280555200;
        Thu, 27 Apr 2017 01:09:15 -0700 (PDT)
To: oss-security@lists.openwall.com, =?UTF-8?Q?Antoine_Beaupr=c3=a9?=
 <anarcat@orangeseeds.org>
References: <87k26628ox.fsf@curie.anarc.at>
From: Emilio Pozuelo Monfort <pochu27@gmail.com>
Message-ID: <c5fea488-4723-ae60-3a48-15a9c234bb70@gmail.com>
Date: Thu, 27 Apr 2017 10:09:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <87k26628ox.fsf@curie.anarc.at>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] kedpm: Information leak via the command history
 file

Hi,

On 26/04/17 22:52, Antoine Beaupré wrote:
> A vulnerability was discovered in the kedpm password manager that may
> expose the master password when changed, if passed on the commandline.
> 
> Example, good:
> 
> kedpm> passwd
> New password:
> Repeat password:
> Password changed.
> kedpm>
> 
> Example, bad:
> 
> kedpm:/> passwd bar
> Password changed
> 
> The former will show "passwd" in the ~/.kedpm/history file while the
> latter will show "passwd bar" in the history file, divulging the
> password in clear text.
> 
> Also, all password *names* that are created or consulted are saved in
> the history file, something that users may not expect (although you have
> to wonder how they thought history worked).
> 
> This is documented in the Debian bugtracker:
> 
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=860817
> 
> But I would like to get a CVE assigned for wider diffusion.

You need to request it at https://cveform.mitre.org/

You can follow up here with the number when you get one assigned.

Cheers,
Emilio
