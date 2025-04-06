Received: (qmail 17860 invoked by uid 550); 6 Apr 2025 22:09:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13861 invoked from network); 6 Apr 2025 22:09:13 -0000
Date: Mon, 7 Apr 2025 00:09:04 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Elad Kalif <eladkal@apache.org>
Message-ID: <20250406220904.GA22635@openwall.com>
References: <c67ed115-d310-e44c-365c-f82f452d2e1a@apache.org> <20250406103749.6d75fa6e@hboeck.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250406103749.6d75fa6e@hboeck.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2025-30473: Apache Airflow Common SQL Provider: Remote Code Execution via Sql Injection

On Sun, Apr 06, 2025 at 10:37:49AM +0200, Hanno Böck wrote:
> On Fri, 04 Apr 2025 18:54:21 +0000 Elad Kalif <eladkal@apache.org> wrote:
> 
> > https://github.com/apache/airflow/pull/48098
> 
> If I read this code correctly, the only thing this PR changes is to
> reject inputs with an ";" character.
> I am not familiar with the codebase, and also by no means an expert in
> SQL injections. But I am pretty sure there are ways to exploit SQL
> injections that do not involve a ";" character.
> 
> Can anyone familiar with the issue check that this is indeed a proper
> fix?

Elad doesn't appear to be subscribed (as is usual and normal for reports
by Apache projects), so I am CC'ing him here.

The fix does indeed look weird to me as well, but I am not familiar with
the codebase, nor with the issue.

Alexander
