import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/validators/auth_field_validators.dart';
import 'package:kernvind/core/widgets/app_text_form_field.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';

class OllamaConfigWidget extends ConsumerStatefulWidget {
  final TextEditingController urlController;
  final TextEditingController apiKeyController;
  final TextEditingController authHeaderController;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  const OllamaConfigWidget({
    super.key,
    required this.urlController,
    required this.apiKeyController,
    required this.authHeaderController,
    required this.usernameController,
    required this.passwordController,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OlmState();
}

class _OlmState extends ConsumerState<OllamaConfigWidget> {
  bool? _authHeader = false;
  bool? _basicAuth = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: 'Ollama Url (Required)',
          controller: widget.urlController,
          validator: textLengthValidator(
              hintText: 'Ollama Url', minLength: 4, maxLength: 1024),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            AutoRouter.of(context).push(const OllamaSetupHowtoRoute());
          },
          child: Text(
            'How to set up Ollama and get Ollama URL?',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.blue[100],
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Header Auth',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Checkbox(
                    value: _authHeader,
                    onChanged: (bool? value) {
                      setState(() {
                        _authHeader = value;
                      });
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Basic Auth',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Checkbox(
                    value: _basicAuth,
                    onChanged: (bool? value) {
                      setState(() {
                        _basicAuth = value;
                      });
                    }),
              ],
            )
          ],
        ),
        if (_authHeader == true)
          AppTextFormField(
            hintText: 'Ollama Auth Header (Required)',
            controller: widget.authHeaderController,
            validator: textLengthValidator(
                hintText: 'Ollama Auth Header', minLength: 4, maxLength: 1024),
          ),
        const SizedBox(
          height: 10,
        ),
        if (_authHeader == true)
          AppTextFormField(
            isObscureText: true,
            hintText: 'Ollama Auth Key (Required)',
            controller: widget.apiKeyController,
            validator: textLengthValidator(
                hintText: 'Ollama Auth Key', minLength: 4, maxLength: 1024),
          ),
        const SizedBox(
          height: 10,
        ),
        if (_basicAuth == true)
          AppTextFormField(
            hintText: 'Ollama username (Required)',
            controller: widget.usernameController,
            validator: textLengthValidator(
                hintText: 'Ollama username', minLength: 4, maxLength: 1024),
          ),
        const SizedBox(
          height: 10,
        ),
        if (_basicAuth == true)
          AppTextFormField(
            isObscureText: true,
            hintText: 'Ollama password (Required)',
            controller: widget.passwordController,
            validator: textLengthValidator(
                hintText: 'Ollama password', minLength: 4, maxLength: 1024),
          ),
      ],
    );
  }
}
