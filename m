Received: (qmail 21640 invoked by uid 550); 6 Feb 2025 08:33:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21619 invoked from network); 6 Feb 2025 08:33:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=haxx.se; s=silly;
	t=1738830780; bh=8s/DPwTHgFhZRakbyGxR75M6G9gejOrD6IL0jtkzy/M=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=km5oOxqEgeC3TB5JoYcxxxK1ut2UH/FuOHpXdHvVf93VMd8a9sCQIP0rYtH/BESpH
	 Ks3eoJLZpuSU8ntc4XdU2oc1HSsL1SxfpI7rM4w1XsQSUzaklXQlkvAeU2njEQC2lB
	 m0R584bO7NqlQaAXmQCZ4vQtIBue0iBY+ovbheRqN4gTOxuufZQAKUUHFBCvFrOzTM
	 4gJWQzzugKjtiYwHbfaqeQlYtJAcYGevVDw05Y4jE+w3ydCYi29fLWdglqZpr02kQQ
	 DgmSQ5HKf8PEPejQUdqYO20Tf0Mb05ZW4xF+khSglYlR3C9z/Nn/TcIXiK0a3V7BNC
	 GCvPsVllxY3Jw==
Date: Thu, 6 Feb 2025 09:33:00 +0100 (CET)
From: Daniel Stenberg <daniel@haxx.se>
To: Fay Stegerman <flx@obfusk.net>
cc: oss-security@lists.openwall.com
In-Reply-To: <Z6PGi6NEnJWK4xeF@nihonium>
Message-ID: <8r03095n-p8q4-srpr-431q-593ror3sss45@unkk.fr>
References: <9s413pp0-or33-59o0-pq82-40s270002npp@unkk.fr> <Z6PGi6NEnJWK4xeF@nihonium>
X-fromdanielhimself: yes
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] [SECURITY ADVISORY] curl: CVE-2025-0725: gzip
 integer overflow

On Wed, 5 Feb 2025, Fay Stegerman wrote:

>> libcurl featured code that at run-time takes a different code path for zlib
>> versions before 1.0.2.4 because of lack of functionality in those old
>> versions, and this rarely used piece of code contained the vulnerable code
>> path.
>
> I assume this last version should have been 1.2.0.4 as before and not 
> 1.0.2.4?

Correct, this has been fixed already in the document version we host.

> Which, whilst I doubt we'll see such a zlib version any time soon if ever 
> (though zlib-ng compat might get there a lot faster), would give an 
> incorrect result for e.g. version "1.10.0.0".

Thanks for pointing this out. I have proposed fix pending: 
https://github.com/curl/curl/pull/16202

-- 

  / daniel.haxx.se
