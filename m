Received: (qmail 13889 invoked by uid 550); 3 Mar 2026 03:58:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11922 invoked from network); 3 Mar 2026 03:57:35 -0000
Date: Tue, 3 Mar 2026 04:57:18 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20260303035718.GA26723@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Fwd: [siren] [Security Advisory] Active Exploitation of Weak GitHub Actions Configurations

Also seen at https://lists.openssf-vuln.org/g/siren/message/6

----- Forwarded message -----

From: "Christopher Robinson via lists.openssf-vuln.org"
Date: Mon, 2 Mar 2026 09:13:33 -0500
Subject: [siren] [Security Advisory] Active Exploitation of Weak GitHub Actions Configurations
To: siren@lists.openssf-vuln.org
Resent-Date: Mon, 02 Mar 2026 07:08:17 -0800
Resent-From: christopher.robinson@linuxfoundation.org
Reply-To: siren@lists.openssf-vuln.org,christopher.robinson@linuxfoundation.org

Date: March 1, 2026
Severity: High – Active exploitation in the wild
Overview


An autonomous attack campaign, tracked as “hackerbot-claw,” is actively
scanning public repositories for insecure GitHub Actions workflows and
exploiting them to execute arbitrary code and exfiltrate credentials. The
campaign has successfully compromised several high-profile open source
projects by abusing common misconfigurations in GitHub Actions CI/CD
pipelines.


Attackers are targeting workflows that:


   -


   use privileged triggers such as pull_request_target,
   -


   execute untrusted code from forked pull requests,
   -


   include inline shell scripts or unvalidated inputs in workflow steps,
   -


   lack authorization checks before running workflows.


A documented example involved project-akri/akri, where a malicious pull
request added a direct shell-injection payload into a script without any
safeguards. The project’s workflow then executed that modified script,
triggering the attacker’s payload.


This is an active, automated attack — not a theoretical vulnerability — and
it’s ongoing across vulnerable open source repositories worldwide. The
Linux Foundation is actively working with our projects to review this
attack, eliminate any malicious files, and is seeking to put controls in
place to stop these types of attacks from being successful in the future
through strong repository security controls and monitoring.
Attack Patterns Being Observed


The bot employs multiple classes of exploitation techniques, including:


   -


   Direct script injection — an attacker modifies a script in a pull
   request so that when the workflow runs, the injected commands are executed
   with repository privileges.
   -


   “Pwn Request” / pull_request_target abuse — workflows that use
   privileged triggers and then check out untrusted code from pull requests
   execute that code with elevated access.
   -


   Branch or filename injection — malicious commands encoded into branch
   names or file paths are evaluated during workflow execution.


These patterns lead to full code execution on GitHub runners and can result
in credential leakage (e.g., exfiltration of GITHUB_TOKEN), unauthorized
code pushes, and supply chain compromise.
Recommended Mitigations


Projects should take immediate action to defend against this active threat:
1. Review and Harden All GitHub Actions Workflows


   -


   Avoid pull_request_target triggers where possible; prefer pull_request,
   which runs on unprivileged tokens.
   -


   Do not check out untrusted code in privileged workflows — especially
   code from forks.
   -


   Limit workflow permissions to the minimum necessary (e.g., contents: read
   instead of write).
   -


   Pin third-party actions by commit hash to prevent tampering.


2. Sanitize All User Inputs


   -


   Do not directly interpolate user-controlled fields (titles, branch
   names, comments) into shell commands or actions without strict validation.
   -


   Extract untrusted inputs into environment variables and validate before
   use.


3. Add Authorization Checks


   -


   Only allow workflows to run on contributions from trusted collaborators
   (e.g., through author_association checks).


4. Use CI Security Scanners and Static Analysis


   -


   Integrate CodeQL or workflow linting tools to detect unsafe patterns
   automatically.


5. Rotate and Restrict Secrets


   -


   Rotate any tokens or secrets that may have been exposed or executed in
   workflows already.
   -


   Consider using short-lived credentials and OIDC federated authentication
   where feasible.


6. Monitor for Suspicious Activity


   -


   Enable audit logs and watch for unusual workflow triggers, unexpected
   token usage, or commits authored by bot accounts.


Further Reading & Resources


Maintainers can deepen their understanding of these issues and best
practices at the following links:


   -


   GitHub’s official guidance on script injection risks
   <https://docs.github.com/en/actions/concepts/security/script-injections>
   and mitigation techniques.
   -


   OpenSSF’s overview of GitHub Actions attack vectors and recommendations
   <https://openssf.org/blog/2024/08/12/mitigating-attack-vectors-in-github-workflows>
   .
   -


   OpenSSF’s Source Code Management Best Practices Guide
   <https://best.openssf.org/SCM-BestPractices/>
   -


   Security guides on hardening Actions workflows
   <https://www.wiz.io/blog/github-actions-security-guide> (permissions,
   pinning, input sanitization).


Summary


This is an active exploitation campaign against GitHub Actions workflows
that rely on permissive triggers and unvalidated input. All public and
private repositories using GitHub Actions should immediately review,
harden, and monitor their workflows to prevent compromise.


The ongoing GitHub Actions exploitation campaign targets weaknesses that
are explicitly addressed by the OpenSSF OSPS Baseline. Projects that
implement OSPS-aligned controls — particularly least privilege automation,
workflow review protections, and secure CI/CD configuration — materially
reduce their exposure to automated supply chain attacks.


Maintainers are strongly encouraged to assess their repositories against
the OSPS Baseline and remediate any gaps as a priority.


If you need help assessing your workflows or implementing mitigations, feel
free to contact your project's security team for assistance.


Additional OSPS-Aligned Mitigation Guidance


The OpenSSF OSPS Baseline directly reduces exposure to modern supply chain
attacks by enforcing least-privilege automation, protected CI/CD workflows,
mandatory peer review for security-sensitive changes, and disciplined
secrets management. The ongoing GitHub Actions exploitation campaign
demonstrates that attackers increasingly target weak repository settings
rather than software bugs themselves. Projects aligned with the OSPS
Baseline materially shrink their attack surface, limit credential exposure,
and prevent unauthorized workflow execution — transforming CI/CD from a
liability into a controlled and auditable security boundary.


Projects that implement the OpenSSF Open Source Project Security (OSPS)
Baseline are significantly more resilient to this class of GitHub Actions
exploitation. The controls below align directly with OSPS expectations and
address the attack patterns observed in this campaign.
1. Enforce Least Privilege in Automation


   -


   Restrict GITHUB_TOKEN to the minimum required permissions (default
to contents:
   read).
   -


   Disable write permissions for workflows triggered by pull requests from
   forks.
   -


   Separate unprivileged CI testing workflows from privileged release or
   deployment workflows.
   -


   Use short-lived credentials (e.g., OIDC) instead of long-lived secrets
   where possible.


OSPS alignment: Automation must follow least privilege and restrict
credential exposure.
2. Harden CI/CD Workflow Configuration


   -


   Avoid using pull_request_target unless absolutely required.
   -


   Never check out and execute untrusted forked code in privileged
   workflows.
   -


   Require maintainer approval before running workflows from external
   contributors.
   -


   Pin third-party GitHub Actions by commit SHA.


OSPS alignment: Build and release processes must be secured and protected
from unauthorized modification.
3. Protect Workflow Files and Critical Infrastructure Code


   -


   Require code review for all changes to .github/workflows/*.
   -


   Use CODEOWNERS to enforce additional scrutiny on CI configuration
   changes.
   -


   Require at least one trusted maintainer review before merging changes to
   automation.


OSPS alignment: Security-sensitive changes must undergo peer review and
access control enforcement.
4. Prevent Script Injection


   -


   Do not interpolate user-controlled inputs (branch names, PR titles,
   comments) directly into shell commands.
   -


   Validate and sanitize inputs before use.
   -


   Prefer reviewed scripts over inline shell blocks in workflow YAML.


OSPS alignment: Secure development practices must prevent injection and
unsafe input handling.
5. Monitor and Prepare for Incident Response


   -


   Enable repository audit logging.
   -


   Monitor for unexpected workflow executions or token usage.
   -


   Rotate any potentially exposed credentials immediately.
   -


   Maintain a documented incident response process and public security
   contact.


OSPS alignment: Projects must be prepared to detect, respond to, and
recover from security incidents.


TLP:CLEAR


-- 
Christopher "CRob" Robinson
*OpenSSF* <https://www.openssf.org> , *The Linux Foundation*
<https://www.linuxfoundation.org>
Chief Technology Officer,  Chief Security Architect
Github <https://github.com/SecurityCRob>  | LinkedIn
<https://www.linkedin.com/in/darthcrob>  | CRob's Office Hours
<https://calendar.app.google/uMvtAfGgYd39fLtk7>

----- End forwarded message -----
