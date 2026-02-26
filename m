Received: (qmail 23979 invoked by uid 550); 26 Feb 2026 14:24:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25624 invoked from network); 26 Feb 2026 08:30:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772094610; x=1772699410; darn=lists.openwall.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nzo9F5anxYseuh3IEeihYH69p1XGJztygBnEsCZlwqI=;
        b=C+XZBz5Vx+gyHPiu9HlXb4lt3a4X7NVqwbIF5fnjW9jUX4dOZN1FQjM+t4MCRmgzp7
         f/hgtOeuSGKNcfGipKPR3ZbiKuQma0BisBWroLQCwjmOLhchlfzChSEqws72Z5A9jDhQ
         g3ULgLQ0FU1Cj8yNReGvpgRSKBB2V8soaip8LQlDhSZErDHj9FfVR/BNg+XcFgQG5uTv
         upngxmYm53SQ29aRdjF6vjQ8uQEZz+ePVH9DZFLHo+morBdz2GyXdK5q5FnrvCkC8CJN
         bMUHaw+vZqp7ZrMYpIZpDnIqN6fbQ4vt0Xa3QUWS3alYbH+t40CrH33voHWxbj+y4z3s
         vZIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772094610; x=1772699410;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nzo9F5anxYseuh3IEeihYH69p1XGJztygBnEsCZlwqI=;
        b=Nnoo4ZK+ZD+RgrbKzXAgc7jMlwwxj82pFmus+oEvnfIKf+Sax20xlHT7fDRzpVhPcQ
         oe7oY51COEqG4bnPhty1ZgBp5xR7Yk2XpOQmWB+e3jvBZyYXCPa3r0kLNKNYyfaZXSgO
         HYtbPc9yGE3hDIPZjPqab5GBoKWZLINSx6/jpPeYgLUptJhxRi9B0biiZyUirC8ycSbS
         Q8kX5V9NCht9YZjO1C5lYI/aDAxp2k947jUnMDrTknRktQdcPA2PaUQboefhFiEjWjiK
         7Azeck1yakSM7zYwugrJWtEUmmlAQ054uXgJHlNtXOIeWgJfO28IZMgZWF0Xn7+G+pYj
         kRdw==
X-Gm-Message-State: AOJu0YxJdkxs1inixu/my6rzXzemHWRzMYSbc9gviKUGmgWf0CH+/w7o
	JxZ/bes+fkNLugwd8QXdXDqacEhHkZbc+h0shDTvDY53No8CHPo75ar+Ed/W1V6s
X-Gm-Gg: ATEYQzyC05ymdv9HnsbFDlPKDD5pd5+ynFQIUNu2jYAFCkKT2UtKZqJSq9Gzi7ipiwN
	G8dA/r8VOfOTtuq47MpijM3s5Mg4cn0acGJHoYodfcbMng0oQ6CuOOUKXyYzl1BEtbE+utRdVe2
	KvEIJHSzppzVBqsew9u+QA9bcW0kgExteHtrrXBg8gL+n9xtHEJHdruvgm82hKn6bNvRrMJt38e
	eE8pKSnK6n08nqbQyuPydCZgPTaZDuLpggR+icti/PB9k1eZ11fjZBo2PJKCvhzWNqrBQzMUBdx
	1ImuQOmVtKp8bjPL2StrBnX6vMZThyXkAArE2UZT7PwG0IITj7wWGeep6SyeJdNuoCmfN8ex/xu
	YEVAPbRs0GZoApQb93odS/LiMwFO4nB22etPnZb4ksWW7pR5PMv0n4STrmnS9venjkvSGFuKuhQ
	jwA5uu/Sb6Ze5HYU0YKqABbV8XoidLMliWLRRPgFY53ngWhDYNYgq1iIxbi0y9bAsRgp3kfjbQh
	R55n8CJ82jBWoh82jeGpGUe+qOEJ65qkwLj+fUaAb7XsygVLASYgETu7j3zBkOeGD8=
X-Received: by 2002:a05:6512:61d2:20b0:5a1:b83:c7d2 with SMTP id 2adb3069b0e04-5a10b83c9e4mr224503e87.22.1772094608769;
        Thu, 26 Feb 2026 00:30:08 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------pNAHIJHrW3it5ACfhzNufB6k"
Message-ID: <4459c96c-dabb-4bd8-882c-1f9495972a51@gmail.com>
Date: Thu, 26 Feb 2026 09:30:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com>
 <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org>
 <20260224011702.27987-1-justin.swartz@risingedge.co.za>
 <B72B4221-75D0-4C28-840F-9CF7B1A53E66.1@smtp-inbound1.duck.com>
 <27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com>
 <20260224203337.GA17345@openwall.com> <a0bad9ebbf4507c4@orthanc.ca>
 <CAA748E8-86CC-4C46-AD03-319F6690252B.1@smtp-inbound1.duck.com>
 <4A24F620-6FA6-4F2B-A1F9-B4781E391989.1@smtp-inbound1.duck.com>
 <a0bae10a8982d3e5@orthanc.ca>
Content-Language: en-US
From: Albert Veli <albert.veli@gmail.com>
In-Reply-To: <a0bae10a8982d3e5@orthanc.ca>
Subject: Re: [oss-security] Telnetd Vulnerability Report

--------------pNAHIJHrW3it5ACfhzNufB6k
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

On 2/25/26 21:39, Lyndon Nerenberg (VE7TFX/VE6BBM) wrote:
> Telnet is "old" because iit is simple and does its job well.  It
> doesn't need all the new shiny knobs people throw at everything,
> nor does it need to grow HTML5 support.  It works as is, and it
> works well.  But if you still use it for remote logins, that's
> operator error, not a protocol security violation.
I agree to this, but I can add that telnet remains widely used for login 
in OT (Operational Technology) environments, including sites running 
critical infrastructure. While operators often justify this by relying 
on network isolation, this reasoning breaks down the moment the air gap 
is bridged.
--------------pNAHIJHrW3it5ACfhzNufB6k--
