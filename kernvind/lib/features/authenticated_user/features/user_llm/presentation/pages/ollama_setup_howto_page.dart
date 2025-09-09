import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown_selectionarea/flutter_markdown_selectionarea.dart';
import 'package:url_launcher/url_launcher.dart';

const String ollamaSetupInstructions = '''
# How to Set Up Ollama Locally and Run a Specific Model

Ollama is a free-to-use service, but it requires solid hardware to run efficiently. A GPU is preferred for better performance. This guide will help you set up Ollama locally and run a specific model of your choice.

## Step 1: Install Ollama
1. **Download Ollama**:
   - Visit the [Ollama download page](https://ollama.com/download) to get the installer for your operating system (Windows. Linux or macOS).
   - Follow the installation instructions on the website.

2. **Verify Installation**:
   - After installing Ollama, open your terminal or command prompt and run:
     ```
     ollama --version
     ```
   - This will display the installed version of Ollama. If this command works, Ollama is successfully installed.
   - You can start the Ollama server by typing the command:
      ```
     ollama serve
     ```
   - By default, Ollama runs on port `11434`.
   
3. **Server Accessibility**:  
   - If the server hosting Ollama is configured to be publicly accessible over the internet, you can skip Step 4 and proceed directly to Step 5 to provide the URL to Kernvind.

---

## Step 2: Set Up Your Environment
1. **Install Dependencies (Optional)**:
   - Depending on the model you plan to run, you might need additional software. Ensure these are installed as required by your chosen model.

2. **Download the Model**:
   - Ollama allows you to download various models. [Models page](https://ollama.com/search) You can do this via the Ollama command-line tool by running:
     ```
     ollama pull <model_name>
     ```
     - Replace `<model_name>` with the name of the model you want to use (e.g., "gemma:2b" or "llama2"). Ensure the model name matches exactly with the name used in Kernvind for integration.  
      - For example, if you run `ollama run gemma:2b` but configure Kernvind with only `gemma`, the connection will fail.

3. **Verify the Model**:
   - To confirm the model is available and ready to use, run:
     ```
     ollama models
     ```
   - This will list all the models you have downloaded.

---

## **Step 3: Run a Specific Model (Optional)**

1. **Run the Model**:  
   - To start using a model, execute the following command in your terminal or command prompt:  
     ```bash
     ollama run <model_name>
     ```
   - Replace `<model_name>` with the name of the model you downloaded (e.g., `gemma:2b` or `llama2`). Ensure the model name matches exactly with the name used in Kernvind for integration.  
     - For example, if you run `ollama run gemma:2b` but configure Kernvind with only `gemma`, the connection will fail.

---

## Step 4: Expose Ollama Locally via ngrok (Optional)

If you'd like to expose your locally running Ollama instance for remote use, you can use ngrok or any other tool of your choice. ngrok is one option, but feel free to use other services that suit your needs.

To use ngrok, follow these steps:

1. **Download and Install ngrok**:
   - If you don't have a ngrok account, sign up at the [ngrok signup page](https://dashboard.ngrok.com/signup).
   - Visit [ngrok download page](https://ngrok.com/download) and download the version for your system.
   - Follow the instructions to install ngrok.
   - Authenticate your ngrok account by running the following command:
     ```
     ngrok authtoken YOUR_AUTH_TOKEN
     ```

2. **Expose Your Local Server**:
   - Run the following command to expose your locally running Ollama model through ngrok:
     ```
     ngrok http 11434 --host-header="localhost:11434"
     ```
   - This will generate a URL (e.g., `https://abc123.ngrok.io`) that forwards traffic to your local server. This URL will act as a bridge, allowing Kernvind to access your locally running Ollama instance.


---

## **Step 5: Using the Model with Kernvind**

1. **Connect Your Local Model to Kernvind**:  
   - After setting up and running your model (either locally or via ngrok), integrate it into Kernvind as a custom model service.  

2. **Provide the Ollama Server URL**:  
   - When creating an Ollama AI model in Kernvind, enter the appropriate URL based on your setup:  
     - **Publicly Accessible Server**: Use the public URL from Step 1 (e.g., `http://<server_ip>:11434`).  
     - **Exposed via ngrok**: Use the ngrok URL from Step 4 (e.g., `https://abc123.ngrok.io`).  

3. **Finalize the Integration**:  
   - Kernvind will connect to the provided URL and enable you to use your Ollama AI model seamlessly within the platform.  

---

## **Troubleshooting**

- **Kernvind Cannot Connect to Ollama Server**:  
  - Ensure that the Ollama server is running whenever you use Kernvind. Verify that the server URL (public or ngrok) is correct and accessible.  
  - If you are using the free version of ngrok, note that the ngrok URL changes each time you restart ngrok. Be sure to update the AI model configuration in Kernvind with the new URL.  

  - **AI Model Name Does Not Match**:  
    - Ensure that the AI model name provided in Kernvind matches exactly with the name you used when running the AI model in Ollama.  
      - For example, if you run `ollama run gemma:2b` but configure Kernvind with only `gemma`, the connection will fail. Verify and use the exact name, including version tags if applicable.

- **AI Model Not Downloading**:  
  - Check your internet connection to ensure it is stable.  
  - If the issue persists, verify that Ollama's AI model repository is operational and not experiencing downtime.

- **Performance Issues on Low-Performance Hardware**:  
  - Ollama requires substantial computational resources, particularly for larger models.  
  - If your system does not have a GPU, performance may be significantly reduced, and some models might not run. Consider upgrading your hardware for a better experience.


---

## **Frequently Asked Questions**

### Q: What is Ollama?  
**A:** Ollama is a local model server that lets you run AI models directly on your machine.

### Q: Do I need an internet connection for ngrok?  
**A:** Yes, ngrok requires an internet connection to generate a public URL for exposing your local server.

### Q: Can I secure the ngrok URL?  
**A:** Yes, ngrok’s dashboard allows you to configure basic authentication for added security.

### Q: What authentication options does Kernvind provide while connecting to the Ollama server?  
**A:** Kernvind supports basic authentication and API header key authentication. You can choose either or both when creating an Ollama model in Kernvind.

---

**Disclaimer**:  
When using Ollama and other third-party services, users are responsible for ensuring compliance with the respective terms of service and verifying that their hardware meets the necessary requirements. Users must also maintain the security of their systems and data, especially when exposing services via ngrok or similar tools.

''';

@RoutePage()
class OllamaSetupHowtoPage extends StatelessWidget {
  const OllamaSetupHowtoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ollama setup'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: SelectionArea(
              child: MarkdownBody(
                data: ollamaSetupInstructions,
                onTapLink: (text, url, title) {
                  if (url != null) {
                    if (url.startsWith('https://')) {
                      try {
                        final uri = Uri.parse(url);
                        launchUrl(uri, webOnlyWindowName: '_blank');
                        // ignore: empty_catches
                      } catch (e) {}
                    }
                  }
                },
                //shrinkWrap: true,
                //physics: const NeverScrollableScrollPhysics(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
