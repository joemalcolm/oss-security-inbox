Received: (qmail 19793 invoked by uid 550); 8 Dec 2025 17:03:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29950 invoked from network); 8 Dec 2025 16:42:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brad-house.com; s=google; t=1765212160; x=1765816960; darn=lists.openwall.com;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jfvNpMtJ/ZG9HppG4ChHDLT/K0AOgicEckdHQe/465s=;
        b=cYOvm7099drEyZmTA8ZN0B8vwEtTSsjmz96PwEor/6XBrzEkLaq+0R2ts4D//4ZW01
         NIXlgamGZOTqN4hx7azjecuoz4/zBFGH3EfFRIm/T/RsJhPauFhv1dgw7t52EwoTrpZt
         sF0OuXAGbKONqYUF8KH3zgBLHv5zuMRhUiOaYSUTXuE4Qy93MksJuX5d+E6hqbGZ9IYz
         /J5ubtA4gwxFFcD7e9NNS6N4xFpmEAEw9Gxsdftr7oBDmQgX1rIvXCB9Iqf+OQEef9Jm
         CsUjutlkw+Bih2V4juB9PEERxunHooR9HdZOA2yug7j+uRZvZqOreUa/cSh3/Ite/gpQ
         HV4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765212160; x=1765816960;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jfvNpMtJ/ZG9HppG4ChHDLT/K0AOgicEckdHQe/465s=;
        b=ixzAaDELPIzgWnmp8hccdl/Z2Ow2dMmve7ShpUiOBdCz2cmnHwJxNCr8VOL9IZczUf
         kLts/aUcFDMk3ZXz5d53O/dajLts5Jy5feamdy5HMc1I3DEuaCT58K+I2VxDrv+5HGCG
         ehTYn/EOWYHHLZ3LB6qLUSGuI0+MVeAn70i0jIMpgL2/gW5dWPwZC59CJ912unx3DNfK
         Vo8P/v0mPzHZ8+5Vwmu3iujKATUR7qxFKCSHFn11lCYqx8TGF6GOABOkcJVvEqYG9aO9
         CabSIjfrXV/H/JLctUaPBLbdcnOhk0ohB24GGGYw/SPzVKXGxdbkGNLDvQkVjickPzKf
         jVZQ==
X-Gm-Message-State: AOJu0YyU9cCiDM4SaFzfA0Rlf5SBkar71L3XMMxiU85llZtFq5blIFT/
	y8sNlhoz6ofk/deLf3pEO8tPcpXG00yAkOpLOh234Rcl6cV3mlvzguGr/511f4AqaxGOi0WeONr
	l8pXGvs4=
X-Gm-Gg: ASbGncuWJe33GdTN+bnJXgpPUh8Rg4XQ7j9eLWiJwFp0E6+hoKYmLm7/u7doPVhtFWT
	zu9cpA5cQjbEY/01MQ2VuMgJFjflfHq0eNp5Fgc7gpLefwcGpFAtwHE7y1dT0kHOj42kl9tRq3P
	tqaNJh0x14P9KgzMCPZ55ZfQh9jzYS+cG4t9bqOlU+ZLmMDjBO+wheFo66exj/ZiW+XOh/D8x0H
	twfa6eYOcXSlhs6RqpAiVUmNLzml8cezOcNCRqbWSXyLesc+/5jRs6IjAA3iujBZkyBgY07Ilke
	MRn/92VwBPmu/H108qPTCgF/g6Bn3NXYvizmvP6m9349JLfePuM50AYc0x9qkJVIGFKbPM8ZD4i
	I/cXmPASEZek3Ruuwce+KmrrkIXFcEHFrK6ckGPuw6PJsKiDenYhagGwd
X-Google-Smtp-Source: AGHT+IE4bZsLDrHfi/LHqQd2eocOcyoS29I2o6VAB6PmNxQ7jz0qT1ywapHMW+x6CG1nwdpsPupckw==
X-Received: by 2002:a05:6808:1792:b0:450:f45e:f4ae with SMTP id 5614622812f47-455729ee3a3mr16193b6e.9.1765212160439;
        Mon, 08 Dec 2025 08:42:40 -0800 (PST)
Message-ID: <753cccf8-8290-4e11-a9e2-907a6c5f4786@brad-house.com>
Date: Mon, 8 Dec 2025 11:42:33 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Brad House <brad@brad-house.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2025-62408: c-ares 1.32.3-1.34.5 use after free()

Moderate.

Use after free() in read_answer() when process_answer() may terminate a 
query such as after maximum attempts. This was causing the connection to 
be closed, but still possibly additional answers to be processed. This 
is a missed case from CVE-2025-31498.

Use after free will lead to crash / Denial of Service.

Patch: 
https://github.com/c-ares/c-ares/commit/714bf5675c541bd1e668a8db8e67ce012651e618.patch

Links: 
https://github.com/c-ares/c-ares/security/advisories/GHSA-jq53-42q6-pqr5

