Received: (qmail 32564 invoked by uid 550); 8 May 2026 14:37:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32539 invoked from network); 8 May 2026 14:37:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pipping.org;
	s=manitu-webhosting; t=1778251054;
	bh=ByqvhDbNEs8LbaHkAUxNmKL2ePQ7SKIYwnJLgjb/9Y8=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=bGqupyXEaj9Qx51jNhyxWmk4Np+WsD9h6NkmlioHk3o/ZAoM0SqPc+nzvKHKwT670
	 aCHtblPOjyTisn+7VtPJMtkmdhU3ZnUPQKSE8gYySa4IPzGsA9fzdrja6aK/MEXNg5
	 PKztztP2ChPl7NY/KABU9sMFb+cTkIrdNFOU8iCBmu+06EAPTk2l/zb/psJPqhQQli
	 L/+HLujDIv+T3Zfiyw8WMOJi686X41rqjpNIa0UmXixVUF2HsJZjx//xE6RaE0sYlz
	 4cgkAO6wF6V7NdmsSMtnwVf6wu8ZJwHG8/LoDTsQ74xwUf+KZO8fNx29SR3UtVZ9m3
	 6Yt6NfgfsYl/g==
Message-ID: <c716f684-e75f-495d-9d5b-b09db268c7a0@pipping.org>
Date: Fri, 8 May 2026 16:37:34 +0200
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <875x4zk7k4.fsf@alyssa.is>
 <24898a59-3315-4132-8f35-0dc6db414b78@gmail.com>
Content-Language: en-US
From: Sebastian Pipping <sebastian@pipping.org>
In-Reply-To: <24898a59-3315-4132-8f35-0dc6db414b78@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] XSS in Postorius (Mailman 3) 1.3.13 and earlier

On 5/8/26 06:19, Demi Marie Obenour wrote:
> I know that the
> (unrelated) h2o project (a C HTTP server library and daemon) does
> tell users to use its master branch.

I would like to note that telling users to use the default branch
means to ask them to watch that branch for new commits and to 
potentially re-deploy after every push to that branch, not just
after every release.

With my upstream-elsewhere hat on, keeping the default branch in
releasable shape and doing a new release soon after security fixes
should be feasible. If it's not feasible, that probably indicates other
problems. (I mean that in general and not with regard to Postorius or
h2o, specially. I have not looked at these or their processes in
detail.)

Best, Sebastian

