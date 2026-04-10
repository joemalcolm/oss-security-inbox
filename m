Received: (qmail 19921 invoked by uid 550); 10 Apr 2026 02:10:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18379 invoked from network); 10 Apr 2026 02:10:24 -0000
Date: Fri, 10 Apr 2026 04:10:23 +0200
From: Solar Designer <solar@openwall.com>
To: Markus Vervier <markus.vervier@x41-dsec.de>
Cc: oss-security@lists.openwall.com
Message-ID: <20260410021023.GA20691@openwall.com>
References: <c8e0642f-cf20-4310-84d0-da223e5b16ed@x41-dsec.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c8e0642f-cf20-4310-84d0-da223e5b16ed@x41-dsec.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] X41 Advisory X41-2026-001: Guardrail Sandbox Escape in LiteLLM

Hi,

Thank you Markus for posting this to oss-security on time.

On Thu, Apr 09, 2026 at 12:51:06AM +0200, Markus Vervier wrote:
> Workarounds
> ===========
> 
> No vendor patch is available at the time of publication. Users could 
> apply the following mitigations:

Somehow this section just ended with the above, without actually listing
any mitigations.  The copy of this advisory on the X41 website:

https://www.x41-dsec.de/lab/advisories/x41-2026-001-litellm/

actually includes the mitigations, which I'll copy-paste to here:

> - Block the endpoint at the reverse proxy level: If LiteLLM is deployed
> behind a reverse proxy such as nginx or Caddy, deny requests to
> /guardrails/test_custom_code. For example in nginx: location
> /guardrails/test_custom_code { deny all; return 403; }
> 
> - Restrict access to the admin API: The affected endpoint requires
> authentication with the master key. Ensure the master key is only known
> to trusted administrators and is not shared with regular API consumers.
> 
> - Do not expose the LiteLLM management interface to untrusted networks:
> Use network-level controls (firewall rules, VPC security groups) to
> limit access to the LiteLLM admin port to trusted hosts only.
> 
> - Avoid running LiteLLM as root: The default Docker image runs the process
> as root, maximizing the impact of code execution. Use --user to run the
> container as an unprivileged user to limit post-exploitation impact.

Alexander
