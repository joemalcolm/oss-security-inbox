Received: (qmail 16104 invoked by uid 550); 2 Nov 2022 12:32:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16083 invoked from network); 2 Nov 2022 12:32:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=netmeister.org;
	s=2022; t=1667392307;
	bh=kGDVlZ9KJ8VbJHcMNBSRYOUBY3RfPu9K5/VWL0vo81Q=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=R+rNkrrevFsRS0UV0P9XbxOJJg51rVixJ5tXd3LTLoiVsHZtu+nRkzTyYDDuQ5F9n
	 2feT8cm0zh59Ckn/9XKYDIsNm2agshMBixuMVXuqzaltWN5OdSJ5JsHLNhTuFX7kvk
	 aSEcCdcCdT+/IZmN/ulKH1wlXg9QgpJlwIJiD+OoLs+tRnh54o6IizhWh7qLMosP/A
	 NZFq5JZBCcvHBy32v55MpalGegjcVwBKvZQlZ9+5X0u//jVd+yh26SsDsWDQUGjD+P
	 iEG+/+OEhGkk3TGwq5JOBb3toIPBdwDlC9NqQrjekeD1SMWXbqTFCQJgo3rfwUeTYL
	 7y4zc4lsdmGqg==
Date: Wed, 2 Nov 2022 08:31:47 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <Y2JjM+PeOtPE9cyG@netmeister.org>
References: <0f038d9f-d6a6-41d4-9e80-c2d18ec179edn@googlegroups.com>
 <80a06f61-9ae0-402e-9db2-63cc3a79dc64n@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <80a06f61-9ae0-402e-9db2-63cc3a79dc64n@googlegroups.com>
Subject: Re: [oss-security] Fwd: Node.js security updates for all active
 release lines, November 2022

"soyjuanarbol@gmail.com" <soyjuanarbol@gmail.com> wrote:
> The Node.js project will release new versions of all supported release 
> lines on or shortly after Thursday, 3rd of November, 2022
> For more information see: 
> https://nodejs.org/en/blog/vulnerability/november-2022-security-releases/

Perhaps worth noting: I believe NodeJS 17.x is also
impacted by OpenSSL CVE-2022-3602 and CVE-2022-3786 --
like > 18.x, 17.x also includes the OpenSSL 3.0.x fork
quictls.

However, nodejs 17.x is EOL, so won't see an update.
Good thing nobody ever runs EOL'd software!

-Jan
