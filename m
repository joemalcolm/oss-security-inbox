Received: (qmail 32506 invoked by uid 550); 8 Aug 2025 03:51:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25910 invoked from network); 8 Aug 2025 03:50:59 -0000
Date: Fri, 8 Aug 2025 05:50:24 +0200
From: Solar Designer <solar@openwall.com>
To: Andy Tinkham <andy.tinkham@cyberark.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20250808035024.GA905@openwall.com>
References: <VI0P193MB248213E5C8E5DAA397A837F6E256A@VI0P193MB2482.EURP193.PROD.OUTLOOK.COM>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="uAKRQypu60I7Lcqm"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <VI0P193MB248213E5C8E5DAA397A837F6E256A@VI0P193MB2482.EURP193.PROD.OUTLOOK.COM>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Five new CVEs published for Cyberark Conjur OSS

--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 16, 2025 at 10:16:47PM +0000, Andy Tinkham wrote:
> On July 15, 2025, CyberArk disclosed 5 vulnerabilities in our Conjur OSS product.
> 
>   * CVE-2025-49827<https://www.cve.org/CVERecord?id=CVE-2025-49827> - Critical - Bypass of IAM Authenticator in Secrets Manager, Self-Hosted (formerly Conjur Enterprise) and Conjur OSS (GitHub Advisory<https://github.com/cyberark/conjur/security/advisories/GHSA-gmc5-9mpc-xg75>)
>   * CVE-2025-49828<https://www.cve.org/CVERecord?id=CVE-2025-49828> - High - Remote Code Execution in Secrets Manager, Self-Hosted (formerly Conjur Enterprise) and Conjur OSS (GitHub Advisory<https://github.com/cyberark/conjur/security/advisories/GHSA-93hx-v9pv-qrm4>)
>   * CVE-2025-49829<https://www.cve.org/CVERecord?id=CVE-2025-49829> - Medium - Missing validations in Secrets Manager, Self-Hosted (formerly Conjur Enterprise) and Conjur OSS (GitHub Advisory<https://github.com/cyberark/conjur/security/advisories/GHSA-9w76-m74g-4c2r>)
>   * CVE-2025-49830<https://www.cve.org/CVERecord?id=CVE-2025-49830> - High - Path traversal and file disclosure in Secrets Manager, Self-Hosted (formerly Conjur Enterprise) and Conjur OSS (GitHub Advisory<https://github.com/cyberark/conjur/security/advisories/GHSA-7m6h-fqrm-m9c5>)
>   * CVE-2025-49831<https://www.cve.org/CVERecord?id=CVE-2025-49831> - Critical - IAM Authenticator Bypass via Mis-configured Network Device in Secrets Manager, Self-Hosted (formerly Conjur Enterprise) and Conjur OSS (GitHub Advisory<https://github.com/cyberark/conjur/security/advisories/GHSA-952q-mjrf-wp5j>)

> All users of Conjur OSS are encouraged to update to the 1.22.1 release, available on DockerHub<https://hub.docker.com/layers/cyberark/conjur/1.22.1/images/sha256-331fecd01c5a8a6179165bedba57b85f7cd1283b6b2a9a4f29fcb1e7a92580b3> and at the GitHub.com Conjur 1.22.1 release<https://github.com/cyberark/conjur/releases/tag/v1.22.1>.  These issues also affect our Secrets Manager, Self-Hosted (formerly Conjur Enterprise) product and have been disclosed to our customers in our security bulletin CA25-22<https://www.cyberark.com/CA25-22>.
> For further information, please see our blog post<https://www.cyberark.com/resources/product-insights-blog/addressing-recent-vulnerabilities-and-our-commitment-to-security>.

Thank you for sharing this with oss-security!

There's now also a disclosure by Cyata, the researchers who found these
issues:
https://cyata.ai/blog/exploiting-a-full-chain-of-trust-flaws-how-we-went-from-unauthenticated-to-arbitrary-remote-code-execution-rce-in-cyberark-conjur/

They also looked for and found logic flaws in HashiCorp Vault, but I am
hoping we'll have a separate thread on that (I am asking them to post).

Meanwhile, attached is a plain text export of the above blog post.

Alexander

--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="exploiting-a-full-chain-of-trust-flaws-how-we-went-from-unauthenticated-to-arbitrary-remote-code-execution-rce-in-cyberark-conjur.txt"
Content-Transfer-Encoding: 8bit

                      © 2025 Cyata. All rights reserved.

   August 6, 2025

   • 22 min read

  Exploiting a full chain of trust flaws: how we went from unauthenticated to
            arbitrary remote code execution (RCE) in CyberArk Conjur

   Written by Yarden Porat, Core Team Engineer

Introduction

   Enterprise vaults are designed to secure the secrets, credentials, and
   tokens that control access to everything else. That’s what makes them
   such prime targets for attackers.

   When they succeed at exploiting them, the results can be severe, including
   enterprise-wide credential theft, data tampering and leakage, operational
   disruption, and regulatory exposure.

   This is why it was so important for us at Cyata to understand just how
   secure these vaults really are.

   Over several weeks of focused research, we analyzed two widely used
   enterprise secrets management platforms, HashiCorp Vault and CyberArk
   Conjur. We invite you to read the full breakdown of our findings regarding
   HashiCorp Vault.

   In Conjur, our investigation uncovered a full pre-authentication remote
   code execution (RCE) chain. Through a series of logic flaws, we
   demonstrated how to achieve RCE on a Conjur deployment using the default
   AWS integration setup.

   No credentials. No tokens. Not even a real AWS account. Just a carefully
   crafted series of requests that moved from zero access to full control,
   all by exploiting default behavior.

   This exploit chain doesn’t rely on memory corruption or race conditions.
   It’s entirely logic-based, combining type confusion flaws and a new
   attack primitive that bypasses multiple layers of trust enforcement –
   all using standard requests and default configurations.

   It’s the kind of path that’s invisible to traditional defenses and
   devastating once it’s exploited.

   In this post, we walk through what we found, how we found it, and what it
   means for the infrastructure Conjur is trusted to protect.

   These issues have since been fixed by the vendor. To stay protected,
   update to the latest version as soon as possible.

What is Conjur

   CyberArk Conjur is an open-source secrets management solution designed to
   securely store, manage, and control access to sensitive credentials, API
   keys, certificates, and other secrets used in DevOps and cloud-native
   environments.

   Built for automation-first infrastructure, Conjur is primarily used to
   manage machine and AI identities, and broker secure access between
   services in CI/CD pipelines, Kubernetes clusters, and other dynamic
   environments.

   It integrates with tools like Jenkins, Kubernetes, Ansible, and Terraform,
   providing policy-based access controls and scalable machine-to-machine
   authentication.

   Its policy engine allows for precise permission scoping and enforcement,
   and its compatibility with enterprise CyberArk deployments makes it
   appealing for hybrid cloud security strategies.

   In many organizations, Conjur serves as a trust anchor in automated
   workflows, and as this research shows, a compromise in Conjur can have
   far-reaching consequences across systems that depend on it.

   Conjur Highlights

     * Designed to secure secrets across DevOps pipelines and CI/CD
       environments
     * Provides centralized secrets management with encryption
     * Offers role-based access control (RBAC) for securing machine and
       application identities
     * Integrates with container orchestration platforms and developer tools,
       e.g., Kubernetes, Jenkins, and Ansible
     * Open source and commercial options

   For more on Conjur, see here.

Methodology

   Before we began searching for vulnerabilities, we first set out to
   understand how Conjur works. Rather than poking around randomly, we
   focused on its internal design:

     * How authentication flows are implemented
     * How permissions are enforced
     * How identity is modeled

   We examined the policy language, the structure of resource identifiers,
   and the way secrets are stored and retrieved.

   The first breakthrough came when we reviewed how Conjur handles AWS IAM
   authentication. From there, we noticed a pattern – critical HTTP
   endpoints often rely on attacker-controlled inputs like :id, :account, and
   :kind, without a consistent validation mechanism.

   The lack of validation made us think there was a deeper path to explore.
   So instead of chasing standalone issues, we asked ourselves what a full
   compromise might require, then worked backward to find the flaws that
   could make it possible.

The path to compromise

   Step 1: Redirecting trust – IAM Authentication Bypass

   We began by exploring Conjur’s AWS IAM authentication flow, a widely
   used mechanism that lets workloads authenticate without needing hardcoded
   credentials. It's commonly used in CI/CD pipelines, where machines need to
   retrieve secrets securely.

   This integration is quite complex. The AWS instance generates a signed
   Authorization header, which Conjur passes to AWS Security Token Service
   (STS). STS verifies the signature and returns the identity of the AWS
   instance.

   But we noticed something interesting in the implementation. AWS runs STS
   in multiple regions, each with its own endpoint (like
   sts.us-east-1.amazonaws.com). Conjur doesn’t determine the region on its
   own, it extracts it from user-supplied parameters. That small detail
   opened the door to bypassing the verification entirely.

   What we looked for

   We wanted to understand how Conjur decides which STS endpoint to target
   during IAM authentication.

   In AWS, signed requests are region-specific, which means that a request
   signed for us-east-1 must be verified against sts.us-east-1.amazonaws.com.
   So, the key question became - how does Conjur determine the region used in
   the original signed request?

   To answer that question, we search for and located the method in
   Conjur’s codebase responsible for parsing this value:
   extract_sts_region.

   What we found

   The extract_sts_region function attempts to parse the region from either
   the Host or the Authorization header:

 def extract_sts_region(signed_headers)
   host = signed_headers['host']

   if host == 'sts.amazonaws.com'
     return 'global'
   end

   match = host&.match(%r{sts\.([\w\-]+)\.amazonaws\.com})
   return match.captures.first if match

   match = signed_headers['authorization']&.match(%r{Credential=[^/]+/[^/]+/([^/]+)/})
   return match.captures.first if match

   raise Errors::Authentication::AuthnIam::AWSHeaders, 'Failed to extract AWS region from authorization headers'
 end

   The region is then used to construct the STS domain:

 def aws_call(region:, headers:)
 host = if region == 'global'
 'sts.amazonaws.com'
 else
 "sts.#{region}.amazonaws.com"
  End
  aws_request = URI("https://#{host}/?Action=GetCallerIdentity&Version=2011-06-15")
 begin
 @client.get_response(aws_request, headers)
  rescue StandardError => e
 # Handle any network failures with a generic verification error raise(Errors::Authentication::AuthnIam::VerificationError, e)
 End
  end

   The extract_sts_region function uses unvalidated, attacker-controlled
   header content to construct the STS domain. It lacks proper validation for
   special URL characters. For example, if we send:

 Authorization: Credential= A/A/attacker.domain?/

   the region is extracted as attacker.domain?, and Conjur constructs the STS
   endpoint as:

 https://sts.attacker.domain?.amazonaws.com

   By using the question mark (?) symbol, we were able to strip off the
   .amazonaws.com portion of the URL. This is critical - because in domain
   verification, only the last part of the domain actually matters.

   Conjur then sends a verification request to that domain, which means that
   we fully control the endpoint it trusts to validate IAM identities.

   To demonstrate the impact, we stood up a mock STS server at sts.cyata.ai,
   programmed it to return a forged but well-formed GetCallerIdentity
   response, and watched Conjur accept it as valid.

   No AWS credentials is needed for this step. Just logic.

   Why it matters

   This bypass fundamentally breaks Conjur’s trust boundary.

   By redirecting validation to an attacker-controlled STS endpoint, we were
   able to impersonate any AWS identity we wanted without supplying a single
   credential.

   This was the first step in the chain, where a completely unauthenticated
   attacker could now enter the system, appearing to be a legitimate AWS
   identity.

   Step 2: Creating arbitrary resource – Host Factory abuse

   After bypassing IAM authentication, we took a step back to examine how
   Conjur works behind the scenes, focusing on its policy model and internal
   data structures.

   We looked at how it identifies and manages core resources like hosts,
   variables, policies, and groups, all of which are stored in an internal
   PostgreSQL database.

   Each resource in the database is indexed using a composite ID made up of
   three parts:

     * Account – the name of the Conjur account
     * Kind – the type of resource (host, user, variable, policy, etc.)
     * Identifier – a unique name for the specific resource.

   Here is an example of the resources table:

   This structure isn’t just used internally, it’s also exposed
   externally. Most of Conjur’s HTTP endpoints accept :account, :kind, and
   :id as URL parameters and rely on them to locate or manipulate resources.

   Once we understood how identifiers like :account, :kind, and :id were
   used, we had a strong feeling that if we could create a resource with a
   controlled identifier, it would matter.

   We didn’t yet know how to do it, or whether it was even possible, but it
   felt like the kind of primitive worth chasing.

   We started examining different endpoints, testing for anything that might
   let us influence identifiers. Eventually, we found what we needed in the
   Host Factory - an endpoint that lets you create a host with an arbitrary
   identifier

   What we looked for

   We specifically investigated what permissions are required to use the Host
   Factory.

   First, we considered what the standard Host Factory flow is supposed to
   look like:

    1. Call POST /host_factory_tokens with the ID of a known host factory to
       get a token
    2. The /host_factory_tokens verifies that we have execute permissions on
       the specified host factory resource.
    3. Use that token to call POST /host_factories/hosts, supplying an ID for
       the new host

   With this in mind, we wanted to answer two critical questions:

     * How can we use the Host Factory endpoint if no host factory resource
       is configured?
     * How can we obtain execute permissions on a host factory?

   What we found

   Host Factory Kind Mismatch

   To get a Host Factory token, the caller must have execute permission on
   the target resource. But Conjur doesn’t verify that the resource is
   actually of kind host_factory.

   That means an attacker can pass any resource they have execute permission
   on, such as a group or layer, and still receive a valid token.

   This opens up a clear abuse path, where basically if we own a group
   (ownership gives all permission on a resource), we can:

     * Call the Host Factory token endpoint with that group’s ID
     * Get a token
     * Use it to create a host

   If a client owns a group resource, they can abuse the Host Factory flow to
   create a new host with an arbitrary identifier. And since they own the
   resource used to obtain the token, they also become the owner of the newly
   created host.

   Why it matters

   We can now create hosts with arbitrary identifiers. This is a powerful
   primitive, one that opens the door to attacking some of Conjur’s core
   and most sensitive endpoints.

   And the requirement? Just ownership of a group, a small foothold,
   considering the control it unlocks.

   Step 3 – WhoAmI Policy? - Connecting the Steps

   But how can we become the owner of a group?

   Would a common configuration be enough? Probably, but we wanted to assume
   as little as possible. So, here’s the only assumption we made: AWS
   authentication is enabled.

   That means we needed to find a default path to group ownership. To do
   that, we revisited the IAM configuration from Conjur’s official
   documentation.

 # policy id needs to match the convention `conjur/authn-iam/<service ID>`
 - !policy
   id: conjur/authn-iam/prod
   body:
     - !webservice

     - !group clients

     - !permit
       role: !group clients
       privilege: [ read, authenticate ]
       resource: !webservice

   In the example policy, we see a group called clients. If we can become the
   owner of that group, the rest of the chain falls into place.

   What we looked for

   We started by asking: Can we use the AWS bypass to authenticate as
   user:admin? In this configuration admin is the owner of our policy, and
   therefore the owner of the group.

   What made us think this was possible?

   We noticed that Conjur doesn’t validate the kind of identity during
   authentication. That raised an interesting possibility: what if we could
   authenticate as a user instead of a host?

   But a restrictive check stood in the way: IAM allows authentication as a
   user only if the resource_id contained a slash (/).

   That meant user:admin was off the table.

   What we found

   The ability to authenticate as a user turned out to be just the tip of the
   iceberg.

   The AWS IAM bypass actually lets us authenticate as any resource.

   Why? Because all resources in Conjur are stored in the same PostgreSQL
   table, and the permissions system is global across all types.

   There’s no distinction between identity resources (host, user) and role
   resources (group, layer, policy)- they’re all treated the same by the
   authorization engine.

   This means we can go one step further:

     * Authenticate as the policy itself.
     * And in our case, that policy is the owner of the clients group.

   Why it matters

   This step changed the game. It bridged the gap between unauthenticated
   access and a meaningful attack surface in Conjur.

   By combining a forged STS response, a policy identity instead of a host,
   and flaws in the Host Factory flow, we gained the ability to mint new
   hosts with names and ownership entirely under our control.

   Step 4 – Executing code - abusing policy templates for RCE

   With the ability to create arbitrary hosts through the Host Factory, we
   started thinking about what we could do with that control.

   At first, we focused on privilege escalation, maybe gaining access to
   restricted variables or impersonating higher-privileged roles. But the
   deeper we looked into how Conjur structures policy and manages secrets,
   the more dangerous the path became.

   That’s when we found the Policy Factory, a mechanism that lets you apply
   reusable policy templates programmatically.

   But these templates aren’t static YAML files. They support ERB (Embedded
   Ruby), which means every time a template is applied, it gets rendered and
   executed dynamically.

   And that raised a critical question.

   What if we could control what gets executed?

   What we looked for

   We knew ERB was being executed - the question was whether we could
   influence it.

   To find out, we focused on three key questions:

     * Where are policy templates stored?
     * How does Conjur know which resource is a valid template?
     * Is there any way to inject ERB into that process?

   Answering these questions meant diving into how templates are applied
   behind the scenes, and into how Conjur loads them, renders them, and
   evaluates them through its API.

   What we found

   Policy Factory

   The Policy Factory is triggered through a dedicated endpoint:

 POST "/factories/:account/:kind(/:version)/:id"

   This endpoint is a bit confusing. It takes the account, kind, version, and
   id parameters, then searches for a matching policy template under the
   conjur/factories branch.

   Note: The kind parameter does not refer to the resource type - the
   resource is always expected to be a variable. Instead, kind is used purely
   as part of the lookup path within the conjur/factories namespace.

   The relevant code looks like this:

 def find(kind:, id:, account:, role:, version: nil)
   factory = if version.present?
     @resource["#{account}:variable:conjur/factories/#{kind}/#{version}/#{id}"]
   else
     @resource.where(
       Sequel.like(
         :resource_id,
         "#{account}:variable:conjur/factories/#{kind}/%"
       )
     ).all
   end
 end

   This code locates a variable resource - but the template itself is stored
   inside the associated secret. In the next step, the code takes the
   resource_id of the variable, uses it to look up thesecret, and then
   decrypts its value from the secrets table.

   That decrypted value is the policy template.

   ERB in Policy Templates

   Why do we care about policy templates?

   Because these templates aren’t just static YAML files, rather they’re
   ERB-rendered. Ruby code can be embedded and executed every time a template
   is applied.

   For example, here’s a policy template from CyberArk documentation:

 module PolicyTemplates
   class CreateHost < PolicyTemplates::BaseTemplate
     def template
       <<~TEMPLATE
       - !host
         id: "<%= id %>"
         <% unless annotations.nil? || annotations.empty? %>
         annotations:
         <% annotations.each do |key, value| %>
           <%= key %>: <%= value %>
         <% end %>
         <% end %>
       TEMPLATE
     end
   end
 end

   That’s why, at first, we considered finding a way to abuse an existing,
   configured template. But, Conjur has no built-in templates. Each one must
   be defined manually.

   So we asked a bigger question: instead of abusing an existing template,
   what if we could control the entire template?

   That would allow us to inject arbitrary Ruby code, and have it executed.

   No race conditions. No memory corruption.

   Assigning a Secret to a Host

   So how can we create a policy template?

   As noted earlier, policy templates are stored in the secrets table, and
   secrets are supposed to be assigned only to variables.

   But we discovered a critical gap: nothing actually enforces that rule.

   That meant we could assign a secret containing ERB to a resource of kind
   host.

   For example, consider the following resource_id:

   MyAccount:host:conjur/factories/my_template

   We were able to assign a secret to this resource, even though it is a
   host, not a variable.

   Injecting a host as a variable

   There was still one missing piece. How could we make Conjur treat our host
   as a policy template?

   After all, policy templates are supposed to be stored as variables.

   Let’s take another look at the code:

 module PolicyTemplates
   class CreateHost < PolicyTemplates::BaseTemplate
     def template
       <<~TEMPLATE
       - !host
         id: "<%= id %>"
         <% unless annotations.nil? || annotations.empty? %>
         annotations:
         <% annotations.each do |key, value| %>
           <%= key %>: <%= value %>
         <% end %>
         <% end %>
       TEMPLATE
     end
   end
 end

   We can see that the expected resource_id looks like this:

   “{Account}:variable:conjur/factories/{kind}”.

   Here there is a specific check that the kind is variable. So, what can we
   do?

   As mentioned earlier, there are several cases of missing validation. And
   here, there is no validation on the account parameter.

   We can use the HTTP parameter account as both the account and the kind
   component of the resource_id.

   Therefore, we can call the policies endpoint, with account =
   “MyAccount:host”.

   This results in a resource_id of:

   MyAccount:host:variable:conjur/factories/{kind}.

   So, if we create an arbitrary host with an identifier of:

 “variable:conjur/factories/”

   Then our host will have a full resource_id of:

   “MyAccount:host:variable:conjur/factories/{kind}.”.

   This means, the search will work, and our created secret will be rendered
   as a policy template, executing arbitrary code.

   Why it matters

   This was the final step, and the one that delivered full remote code
   execution.

   The code ran because:

     * We tricked Conjur into fetching a host as if it were a variable
     * We assigned ERB as a secret
     * And Conjur executed it, exactly as it was designed to

   This vulnerability turned arbitrary host creation into arbitrary command
   execution.

   It was a seamless, start-to-finish exploit chain that went from
   unauthenticated access to root.

Putting it all together: Full exploit chain

   Now that we had each vulnerability mapped, it was time to connect the
   dots.

   We had fully compromised Conjur’s authorization and access controls. And
   with that, we were able to execute the full exploit chain.

   Here’s how it unfolded:

   1. IAM authentication bypass

   We injected a fake region in the AWS-signed request, causing Conjur to
   send the STS validation call to a server we controlled (e.g.,
   sts.cyata.ai).

   That gave us the power to forge valid-looking GetCallerIdentity responses,
   impersonating any identity we wanted.

   2. Authenticate as a policy

   Instead of impersonating a host (as the IAM flow expects), we
   authenticated as a policy resource, which Conjur accepted under its
   default IAM configuration.

   This immediately gave us elevated privileges, by design.

   3. Abuse the Host Factory

   Now acting as a policy, we invoked the POST /host_factory_tokens endpoint,
   passing a group resource we controlled.

   Because Conjur didn’t verify the resource kind, we received a valid
   token, despite never using a real host factory.

   4. Create a host named like a variable

   With the token, we created a new host and crafted its resource_id to look
   like a policy template path.

 /variable/conjur/factories/malicious_template

   This host was now positioned to impersonate a valid policy template.

   5. Attach ERB code as a secret

   Conjur is supposed to create secrets on variables only, but that
   enforcement was missing.

   So, we assigned a malicious ERB payload directly to the host, the same
   host that would later be treated as a template.

   6. Trigger ERB execution

   Finally, we called the Policy Factory endpoint. It looked up the template
   by resource_id, found our crafted host, extracted the attached ERB, and
   executed it, exactly as designed.

   Final result

   This exploit chain moved from unauthenticated access to full remote code
   execution without ever supplying a password, token, or AWS credentials.

   Every step used default behavior. Nothing looked out of place. Until it
   was too late.

Responsible disclosure

   Throughout this research, Cyata adhered to a thorough and responsible
   disclosure process. We engaged CyberArk early, providing detailed
   technical reports for each finding - from the initial authentication
   bypass to the full exploit chain.

   The collaboration was transparent, focused, and genuinely constructive.

   CyberArk’s security team responded with professionalism and clarity,
   working closely with us to verify the issues and implement timely fixes
   ahead of public disclosure. Their responsiveness, openness, and strong
   communication set a high bar - and we sincerely wish more vendors handled
   security research this way.

   Kudos to the team at CyberArk – and congratulations on the recent
   acquisition.

   Disclosure timeline

     * May 23, 2025 - We submitted the initial disclosure to CyberArk,
       detailing the IAM authentication bypass.
     * May 29, 2025 - We followed up with the full exploit chain,
       demonstrating end-to-end impact.
     * June 5, 2025 - We held a joint meeting with CyberArk’s security team
       to ensure all issues were clearly communicated.
     * June 5–19, 2025 - We engaged in several rounds of technical
       discussion to review proposed fixes. These were minor follow-ups, no
       additional critical issues were found.
     * June 19, 2025 - Five CVEs were issued.

Conclusion

   Secrets vaults sit at the heart of modern infrastructure. They secure the
   credentials, tokens, and keys that power everything else. That’s exactly
   what makes them so valuable, and so vulnerable.

   At Cyata, we see ensuring the resilience of these systems as one of the
   most critical cybersecurity mandates today. That’s why we invest in
   deep, targeted vulnerability research not just to uncover flaws, but to
   help organizations build trust into the very core of their environments.

   By proactively probing and challenging the systems that manage identity,
   access, and secrets, we aim to reduce risk, prevent breaches, and
   strengthen the foundations of the digital world.

   And we’re just getting started

--uAKRQypu60I7Lcqm--
