# Security Policy

## Overview

The security of containers and automation scripts is of paramount importance to us. While we make best efforts to ensure the security of `docker-ansible`, users should be aware that there are inherent risks involved in using containerized environments and automation tools.

## Security Measures

To mitigate potential security risks, we implement the following measures:

1. **Regular Updates**: We regularly update the project to incorporate the latest security patches and fixes.
2. **Code Reviews**: All contributions are subject to thorough code reviews to identify and mitigate potential vulnerabilities.
3. **Dependency Management**: We manage dependencies vigilantly to ensure they are up-to-date and free of known vulnerabilities.
4. **Container Hardening**: Containers are configured with best practices to reduce the attack surface, including minimizing the number of running processes and dropping unnecessary capabilities. However, they are not specifically secured and likely have some improvements that could be made.
5. **Secure Defaults**: Default configurations are designed with security in mind to reduce the likelihood of insecure deployments.

## Support of multiple base images

Overall, I aim to support multiple base OS images from Alpine, Debian, Ubuntu and RockyLinux (Centos replacement). The aim is to support stable releases and to deprecate unsupported releases. This is often harder for older systems due to compatibility issues with Python and therefore you may find that they only support older versions of Ansible.

## Acknowledgement of Risks

While we strive to provide a secure container, users must recognize that:

1. **Complexity of Security**: Security is an evolving field, and new vulnerabilities are discovered regularly. It is impossible to guarantee absolute security.
2. **Shared Responsibility**: Security is a shared responsibility. Users must also follow security best practices when configuring and deploying containers.
3. **Vulnerability Disclosure**: There can be undiscovered vulnerabilities that may not yet have a known fix or mitigation.

## Reporting a Vulnerability

If you discover a security vulnerability, normally I would suggest responsible disclosure, however, as this is not a supported project in financial or committed time, it is likely to be best to open an issue and point to the problems inside the tool. Often solutions can be found by just re-running the build and fixing, however, if they are not fixed upstream (in base image or from Ansible python packages) then issues are likely to remain. Please treat this as a warning.

## Security Best Practices for Users

Users are encouraged to follow these best practices to maintain a secure `docker-ansible` environment:

1. **Update Regularly**: Ensure your setup is always using the latest version of `docker-ansible`.
2. **Secure Configuration**: Regularly review and follow best practices for Docker and Ansible configurations.
3. **Strong Authentication**: Use strong passwords and access control mechanisms.
4. **Network Security**: Isolate containers within secure network environments and restrict access to trusted sources.
5. **Monitor and Audit**: Continuously monitor and audit your container environments for any unusual activities or signs of compromise.

## Conclusion

I appreciate the community's contributions in making `docker-ansible` more secure. By working together and following best practices, we can mitigate the majority of security risks and ensure a safer environment for all users.

Thank you for your cooperation and dedication to securing `docker-ansible`.

