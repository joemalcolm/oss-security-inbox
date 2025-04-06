Received: (qmail 31846 invoked by uid 550); 6 Apr 2025 08:38:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31819 invoked from network); 6 Apr 2025 08:38:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1743928670; bh=MCAaT8hk9IbiGp4p5waqmZwIauli5y9arsgNZ4q3skQ=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=jvFEhgjXhFw7nCz6sYDvjORKB/OuK1e3t//gueb7Le572qUVgjaCIM7r1HcpTo0XJ
	 uDMXyEnXFvVv06PGbOJ8AHApxMn5svn71DaD+2NHPA6yjvKu3qRd9Tl47ZCriP9vXR
	 D8X5ZdlQdCvxUI2KIZqnyUQPvwMpfCtOV8pcWRgC6m99Ix0WcV/ohLMcqLJ7/FqWqK
	 nE09yNPjUxXtprhSgB8osKBesb74MKt2UJZMp3zb+X/Rv4vUE3kdAGOT6WsNSMuU+I
	 ok8KFCbpbS2Zwjk3jktABQa/eAZrHryvlyzdwuZ4QGzox70yjqkVT0SvjOCR9Eizfn
	 gvhlSINFeriOQ==
Original-Subject: Re: [oss-security] CVE-2025-30473: Apache Airflow Common SQL
 Provider: Remote Code Execution via Sql Injection
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Sun, 6 Apr 2025 10:37:49 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20250406103749.6d75fa6e@hboeck.de>
In-Reply-To: <c67ed115-d310-e44c-365c-f82f452d2e1a@apache.org>
References: <c67ed115-d310-e44c-365c-f82f452d2e1a@apache.org>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2025-30473: Apache Airflow Common SQL
 Provider: Remote Code Execution via Sql Injection

Hello,

On Fri, 04 Apr 2025 18:54:21 +0000
Elad Kalif <eladkal@apache.org> wrote:

> https://github.com/apache/airflow/pull/48098

If I read this code correctly, the only thing this PR changes is to
reject inputs with an ";" character.
I am not familiar with the codebase, and also by no means an expert in
SQL injections. But I am pretty sure there are ways to exploit SQL
injections that do not involve a ";" character.

Can anyone familiar with the issue check that this is indeed a proper
fix?


--=20
Hanno B=C3=B6ck
https://hboeck.de/
