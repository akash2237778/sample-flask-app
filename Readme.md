Sample Flask Application with Helm Chart
========================================

This is a sample Flask web application containerized using Docker and deployed to Kubernetes using a Helm chart. The application displays a simple "Hello, Docker!" message on a web page.

Prerequisites
-------------

Before deploying this application, ensure you have the following tools installed:

-   Docker: [Install Docker](https://docs.docker.com/get-docker/)
-   Kubernetes: [Install Kubernetes](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
-   Helm: [Install Helm](https://helm.sh/docs/intro/install/)

Getting Started
---------------

Follow these steps to deploy the Flask application to your Kubernetes cluster:

1.  Clone this repository to your local machine.


```
git clone https://github.com/akash7778/sample-flask-app.git
cd sample-flask-app
```

1.  Build the Docker image for the Flask application.


```
docker build -t akash7778/sample-flask-app .
```

1.  Push the Docker image to your container registry.


```
docker push akash7778/sample-flask-app
```

1.  Install the Helm chart.


```
helm install sample-flask-app ./sample-flask-app-chart-0.1.0.tgz
```

1.  Access the web application.

After deploying the Helm chart, the Flask application will be accessible via the Kubernetes Service. To find the IP address or DNS name to access the application:


```
kubectl get services
```

Look for the `EXTERNAL-IP` of the `sample-flask-app` service and access the application in your web browser using that IP and port 5000. Alternatively, if you are using a cloud provider, there might be a LoadBalancer created, which will provide an external IP automatically.

Configuration
-------------

You can customize the deployment by modifying the values in `values.yaml` file:

-   `image.repository`: The Docker image repository for the Flask application.
-   `image.tag`: The tag of the Docker image to use.
-   `image.pullPolicy`: The image pull policy for Kubernetes (e.g., Always, IfNotPresent, Never).
-   `service.type`: The type of Kubernetes service (e.g., ClusterIP, NodePort, LoadBalancer).
-   `service.port`: The port to expose the application.

Helm Chart Directory Structure
------------------------------

-   `Chart.yaml`: Contains the metadata and description of the Helm chart.
-   `values.yaml`: Contains the default configuration values for the chart.
-   `templates/`: Contains the Kubernetes YAML templates for the Deployment and Service resources.

Clean Up
--------

To remove the deployed Flask application and Helm release:


```
helm uninstall sample-flask-app
```

Contributing
------------

Feel free to contribute to this project by creating pull requests or reporting issues.
